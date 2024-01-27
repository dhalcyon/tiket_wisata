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
    return Stack(
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
    );
  }
}
