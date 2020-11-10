import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class TopPromoSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
          height: 150.0,
          width: double.infinity,
          child: Carousel(
            images: [
              Image.asset(
                "assets/images/pub1.png",
                height: 150,
                width: double.infinity,
              ),
              Image.asset(
                "assets/images/pub3.png",
                height: double.infinity,
                width: double.infinity,
              ),
              Image.asset(
                "assets/images/pub4.png",
                height: double.infinity,
                width: double.infinity,
              ),
              Image.asset(
                "assets/images/pub2.jpg",
                height: 150,
                width: double.infinity,
              ),
              Image.asset(
                "assets/images/11.jpg",
                height: 150,
                width: double.infinity,
              ),
              Image.asset(
                "assets/images/22.jpg",
                height: 150,
                width: double.infinity,
              ),
              Image.asset(
                "assets/images/33.jpg",
                height: 150,
                width: double.infinity,
              ),
            ],
            dotSize: 4.0,
            dotSpacing: 15.0,
            dotColor: Colors.orange,
            indicatorBgPadding: 5.0,
            dotBgColor: Colors.black54.withOpacity(0.2),
            borderRadius: true,
            radius: Radius.circular(20),
            moveIndicatorFromBottom: 180.0,
            noRadiusForIndicator: true,
          )),
    );
  }
}
