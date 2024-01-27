import 'package:flutter/material.dart';

class MainTourPage extends StatefulWidget {
  const MainTourPage({Key? key}) : super(key: key);

  @override
  _MainTourPageState createState() => _MainTourPageState();
}

class _MainTourPageState extends State<MainTourPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      child: Row(
        children: [
          Column(
            children: [],
          ),
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue,
            ),
          )
        ],
      ),
    ));
  }
}
