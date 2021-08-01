import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:odevnetflixui/view/ui/denemeui.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 40,
        width: double.infinity,
        child: Icon(Icons.plus_one),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              IconButton(
                onPressed: () {
                  Get.put(() => Denemeui());
                },
                icon: Icon(
                  Icons.access_alarm,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Image.asset("assets/images/instagram_logo.png"),
                      height: 60,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        InkWell(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.plus_one),
                          ),
                          onTap: () {
                            Get.put(() => Denemeui());
                          },
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.message_sharp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          InkWell(
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://i.pinimg.com/originals/1b/5c/61/1b5c61ef773b665859d3b648460e588e.jpg"),
                              radius: 24,
                            ),
                            onTap: () {
                              Get.put(() => Denemeui());
                            },
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List.generate(
                          14,
                          (index) {
                            return Row(children: [
                              Column(
                                children: [
                                  Container(
                                    height: 85,
                                    width: 85,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.red,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://i.pinimg.com/originals/1b/5c/61/1b5c61ef773b665859d3b648460e588e.jpg"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Text(
                                    "@batuuerken",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.blue),
                                  ),
                                ],
                              )
                            ]);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: Column(
                  children: List.generate(
                    1,
                    (index) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CircleAvatar(),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "asdas",
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Icon(Icons.menu),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            child: Image.network(
                              "https://i.pinimg.com/originals/1b/5c/61/1b5c61ef773b665859d3b648460e588e.jpg",
                              fit: BoxFit.cover,
                              height: 300,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(Icons.favorite),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.ac_unit),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.ac_unit),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Icon(Icons.menu),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("16 beğenme "),
                                    Column(
                                      children: [
                                        Text(
                                          "batuuerken      asdasdasd",
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Row(
                                    children: [
                                      CircleAvatar(),
                                      Text("Yorum ekle...."),
                                    ],
                                  )),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(Icons.favorite),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.ac_unit),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.ac_unit),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text("29 Dk Önce"),
                            ],
                          )
                        ],
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
