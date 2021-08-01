import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odevnetflixui/view/ui/denemeui.dart';
import 'package:odevnetflixui/view/ui/kesfet.dart';
import 'package:odevnetflixui/view/ui/profile.dart';

class BottomFullPageNavigator extends StatefulWidget {
  BottomFullPageNavigator({Key? key}) : super(key: key);

  @override
  _BottomFullPageNavigatorState createState() =>
      _BottomFullPageNavigatorState();
}

class _BottomFullPageNavigatorState extends State<BottomFullPageNavigator> {
  @override
  Widget build(BuildContext context) {
    return getFooter();
  }

  Widget getFooter() {
    List buttonName = [
      "assets/images/home_active_icon.svg",
      "assets/images/search_active_icon.svg",
      "assets/images/message_icon.svg",
      "assets/images/love_icon.svg",
      "assets/images/account_icon.svg"
    ];
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            buttonName.length,
            (index) {
              return InkWell(
                child: SvgPicture.asset(
                  "${buttonName[index]}",
                  width: 20,
                  height: 20,
                  color: Colors.black,
                ),
                onTap: () {
                  if (buttonName[index] ==
                      "assets/images/search_active_icon.svg") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Kesfet(
                          Name: buttonName[index],
                        ),
                      ),
                    );
                  } else if (buttonName[index] ==
                      "assets/images/account_icon.svg") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profile(
                          name: buttonName[index],
                        ),
                      ),
                    );
                  } else if (buttonName[index] ==
                      "assets/images/home_active_icon.svg") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Denemeui(),
                      ),
                    );
                  } else {
                    print("${buttonName[index]}" + "    :Tıkladın Batu");
                  }
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
