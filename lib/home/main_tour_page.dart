import 'package:flutter/material.dart';
import 'package:tiket_wisata/home/body_tour_page.dart';
import 'package:tiket_wisata/utils/colors.dart';
import 'package:tiket_wisata/widgets/high_text.dart';
import 'package:tiket_wisata/widgets/medium_text.dart';

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
                    HighText(text: "Negara", color: TheColors.basicColor),
                    Row(
                      children: [
                        Icon(Icons.arrow_drop_down_circle_rounded),
                        MediumText(text: "Kotak", color: TheColors.greyColor),
                      ],
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: 45,
                    height: 45,
                    child: Icon(Icons.search, color: Colors.white),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: TheColors.basicColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        BodyTourPage(),
      ],
    ));
  }
}
