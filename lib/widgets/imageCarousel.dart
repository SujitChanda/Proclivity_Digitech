import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ImageCarousel extends StatefulWidget {
  ImageCarousel({Key key}) : super(key: key);

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  double height;
  double width;

  _height() {
    return height = MediaQuery.of(context).size.height;
  }

  _width() {
    return width = MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.only(left:5, right:5, bottom: 16),
      child: new AspectRatio(
        aspectRatio: 1/0.5,
              child: new Container(
                
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(8)
          ),
            //height: _height() * 0.25,
            //width: 200,
            child: new Carousel(
              boxFit: BoxFit.cover,
              images: [
                new AssetImage("assets/banner/banner.jpg"),
                new AssetImage("assets/banner/banner2.jpg"),
                new AssetImage("assets/banner/banner3.jpg"),
                new AssetImage("assets/banner/banner4.jpg"),
                new AssetImage("assets/banner/banner5.jpg"),
              ],
              //autoplay: true,
              autoplayDuration: new Duration(seconds: 5),
              animationCurve:  Curves.fastOutSlowIn,
              animationDuration: new Duration(milliseconds: 1500),
              indicatorBgPadding: 5.0,
              dotBgColor: Colors.transparent,
              dotSize: 5.0,
              dotColor: Theme.of(context).colorScheme.primaryVariant,
            )),
      ),
    );
  }
}
