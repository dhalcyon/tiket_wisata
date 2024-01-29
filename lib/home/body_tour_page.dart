import 'package:flutter/material.dart';
import 'package:tiket_wisata/utils/colors.dart';
import 'package:tiket_wisata/widgets/high_text.dart';
import 'package:tiket_wisata/widgets/medium_text.dart';
import 'package:tiket_wisata/widgets/text_and_icon.dart';

class BodyTourPage extends StatefulWidget {
  const BodyTourPage({super.key});

  @override
  State<BodyTourPage> createState() => _BodyTourPageState();
}

class _BodyTourPageState extends State<BodyTourPage> {

  PageController pageController = PageController(viewportFraction: 0.9);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = 220;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {

    Matrix4 matrix = new Matrix4.identity();

    if (index == _currPageValue.floor()) {
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    } 
    else if (index == _currPageValue.floor() + 1) {
      var currScale = _scaleFactor + (_currPageValue - index + 1)*(1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;  // 1/10*220=22
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index)*(1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height * (1 - _scaleFactor)/2 , 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: 200,
            margin: EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven ? TheColors.basicColor : TheColors.greyColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/wisata1.jpg"),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              margin: EdgeInsets.only(left: 40, right: 40, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Container(
                padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HighText(text: "Wisata Sunda"),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) => Icon(
                              Icons.star,
                              color: TheColors.basicColor,
                              size: 15,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        MediumText(text: "4,7"),
                        SizedBox(width: 10),
                        MediumText(text: "99"),
                        SizedBox(width: 10),
                        MediumText(text: "comments"),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        TextAndIcon(
                          icon: Icons.circle_sharp,
                          text: "Norm",
                          iconColor: TheColors.icon1Color,
                        ),
                        TextAndIcon(
                          icon: Icons.location_on,
                          text: "1.4km",
                          iconColor: TheColors.icon1Color,
                        ),
                        TextAndIcon(
                          icon: Icons.access_time_rounded,
                          text: "20 menit",
                          iconColor: TheColors.icon1Color,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
