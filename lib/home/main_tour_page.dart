import 'package:flutter/material.dart';
import 'package:tiket_wisata/utils/colors.dart';

class MainTourPage extends StatefulWidget {
  const MainTourPage({Key? key}) : super(key: key);

  @override
  _MainTourPageState createState() => _MainTourPageState();
}

class _MainTourPageState extends State<MainTourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Container(
            margin: EdgeInsets.only(top: 45, bottom: 15),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Negara"),
                    Text("Kota"),
                  ],
                ),
                Center(
                  child: Container(
                    width: 45,
                    height: 45,
                    child: Icon(Icons.search, color: Colors.white),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: TheColors.mainColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
