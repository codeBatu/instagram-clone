import 'package:flutter/material.dart';
import 'package:odevnetflixui/widget.dart/bottomnavigator.dart';

// ignore: must_be_immutable
class Kesfet extends StatefulWidget {
  // ignore: non_constant_identifier_names
  Kesfet({this.Name});
  // ignore: non_constant_identifier_names
  String? Name;
  @override
  _KesfetState createState() => _KesfetState();
}

class _KesfetState extends State<Kesfet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomFullPageNavigator(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SearchWidget(),
              Container(
                height: 600,
                child: GridView.count(
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 2,
                  crossAxisCount: 2,
                  children: List.generate(
                    10,
                    (index) {
                      return Card(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  "https://i.pinimg.com/originals/1b/5c/61/1b5c61ef773b665859d3b648460e588e.jpg",
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 30,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 1),
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Ara",
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
