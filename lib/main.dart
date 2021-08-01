import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:odevnetflixui/view/ui/denemeui.dart';

void main() {
  runApp(Instagram());
}

class Instagram extends StatefulWidget {
  Instagram({Key? key}) : super(key: key);

  @override
  _InstagramState createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Denemeui(),
    );
  }
}
