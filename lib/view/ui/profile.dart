import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odevnetflixui/widget.dart/bottomnavigator.dart';

class Profile extends StatefulWidget {
  Profile({this.name});
  String? name;

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomFullPageNavigator(),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 70,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.lock),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "batuerkenn",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/upload_icon.svg",
                              color: Colors.black,
                              width: 25,
                              height: 25,
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Icon(
                              Icons.menu,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 150,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 45,
                              backgroundImage: NetworkImage(
                                "https://instagram.fist1-2.fna.fbcdn.net/v/t51.2885-19/s150x150/66656735_2342714575810813_5229858376418066432_n.jpg?_nc_ht=instagram.fist1-2.fna.fbcdn.net&_nc_ohc=9ImgiL1gPKkAX-s62UT&tn=9S4e3l2QoEicaqEs&edm=ABfd0MgBAAAA&ccb=7-4&oh=693b7b769461da3c1a721f48e68f67aa&oe=610CB2AA&_nc_sid=7bff83",
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text("Batuhan Erken")
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "2",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("Gönderi")
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "145",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("Takipçi")
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "193",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("Takip"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      7,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 40,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Container(
                height: 800,
                child: GridView.count(
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 2,
                  crossAxisCount: 2,
                  children: List.generate(
                    1,
                    (index) {
                      return Card(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  "https://instagram.fist1-2.fna.fbcdn.net/v/t51.2885-19/s150x150/66656735_2342714575810813_5229858376418066432_n.jpg?_nc_ht=instagram.fist1-2.fna.fbcdn.net&_nc_ohc=9ImgiL1gPKkAX-s62UT&tn=9S4e3l2QoEicaqEs&edm=ABfd0MgBAAAA&ccb=7-4&oh=693b7b769461da3c1a721f48e68f67aa&oe=610CB2AA&_nc_sid=7bff83",
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
