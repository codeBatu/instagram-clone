import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:odevnetflixui/widget.dart/bottomnavigator.dart';

class Denemeui extends StatefulWidget {
  Denemeui({Key? key}) : super(key: key);

  @override
  _DenemeuiState createState() => _DenemeuiState();
}

class _DenemeuiState extends State<Denemeui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getHomePageStoryBody(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Image.asset(
                "assets/images/instagram_logo.png",
                width: 100,
                height: 108,
              ),
            ),
            Container(
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/images/upload_icon.svg",
                    color: Colors.black,
                    width: 30,
                    height: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    "assets/images/comment_icon.svg",
                    color: Colors.black,
                    width: 30,
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //  backgroundColor: Colors.black,
      bottomNavigationBar: BottomFullPageNavigator(),
    );
  }

  Widget getHomePageStoryBody() {
    return StoryBoxWidget();
  }
}

class StoryBoxWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Container(
                              width: 75,
                              height: 75,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://instagram.fist1-2.fna.fbcdn.net/v/t51.2885-19/s150x150/66656735_2342714575810813_5229858376418066432_n.jpg?_nc_ht=instagram.fist1-2.fna.fbcdn.net&_nc_ohc=9ImgiL1gPKkAX-s62UT&tn=9S4e3l2QoEicaqEs&edm=ABfd0MgBAAAA&ccb=7-4&oh=693b7b769461da3c1a721f48e68f67aa&oe=610CB2AA&_nc_sid=7bff83"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              right: 5,
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.blue),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text("Batuhanerken")
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: List.generate(
                      100,
                      (index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 75,
                                height: 75,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://instagram.fist1-2.fna.fbcdn.net/v/t51.2885-19/s150x150/66656735_2342714575810813_5229858376418066432_n.jpg?_nc_ht=instagram.fist1-2.fna.fbcdn.net&_nc_ohc=9ImgiL1gPKkAX-s62UT&tn=9S4e3l2QoEicaqEs&edm=ABfd0MgBAAAA&ccb=7-4&oh=693b7b769461da3c1a721f48e68f67aa&oe=610CB2AA&_nc_sid=7bff83"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text("@batuerkenn")
                          ],
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          Column(
            children: [
              Column(
                children: List.generate(
                  100,
                  (index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://instagram.fist1-2.fna.fbcdn.net/v/t51.2885-19/s150x150/66656735_2342714575810813_5229858376418066432_n.jpg?_nc_ht=instagram.fist1-2.fna.fbcdn.net&_nc_ohc=9ImgiL1gPKkAX-s62UT&tn=9S4e3l2QoEicaqEs&edm=ABfd0MgBAAAA&ccb=7-4&oh=693b7b769461da3c1a721f48e68f67aa&oe=610CB2AA&_nc_sid=7bff83"),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("data")
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 15),
                                child: Text(
                                  ". . .",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 335,
                          width: double.infinity,
                          child: Image.network(
                            "https://instagram.fist1-2.fna.fbcdn.net/v/t51.2885-19/s150x150/66656735_2342714575810813_5229858376418066432_n.jpg?_nc_ht=instagram.fist1-2.fna.fbcdn.net&_nc_ohc=9ImgiL1gPKkAX-s62UT&tn=9S4e3l2QoEicaqEs&edm=ABfd0MgBAAAA&ccb=7-4&oh=693b7b769461da3c1a721f48e68f67aa&oe=610CB2AA&_nc_sid=7bff83",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/images/love_active_icon.svg",
                                      height: 20,
                                      width: 20,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SvgPicture.asset(
                                      "assets/images/comment_icon.svg",
                                      height: 20,
                                      width: 20,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SvgPicture.asset(
                                      "assets/images/message_icon.svg",
                                      height: 20,
                                      width: 20,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: SvgPicture.asset(
                                  "assets/images/save_icon.svg",
                                  height: 20,
                                  width: 20,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(9),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 8,
                                    ),
                                    CircleAvatar(
                                      radius: 8,
                                    ),
                                    CircleAvatar(
                                      radius: 8,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text("liked by asdasdas and others"),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text("Nov 12"),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
