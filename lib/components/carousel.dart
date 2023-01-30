import 'dart:convert';
import 'dart:js_util';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:oumi/helper/images.dart';

List<Widget> createSliders(List<String> imgList) {
  return imgList
      .map((item) => Container(
            child: Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset(
                      item,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Center(
                        child: Text(
                          '',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                blurRadius: 5.0, // shadow blur
                                color: Colors.black, // shadow color
                              ),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ))
      .toList();
}

Future<List<String>> getImages() async {
  var res = await getAssetList(format: '.jpg', directory: 'images/carousel');
  return res.map((e) {
    return "$e";
  }).toList();
}

class CarouselComponent extends StatefulWidget {
  const CarouselComponent({Key? key}) : super(key: key);

  @override
  State<CarouselComponent> createState() => _CarouselComponentState();
}

class _CarouselComponentState extends State<CarouselComponent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getImages(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
                child: CircularProgressIndicator(
              color: Colors.black,
            ));
          } else {
            var sliders = createSliders(snapshot.data!);

            return Container(
                height: (MediaQuery.of(context).size.width > 600)
                    ? MediaQuery.of(context).size.height
                    : MediaQuery.of(context).size.height / 3,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height - 50,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1.0,
                    enlargeCenterPage: true,
                    pageViewKey: PageStorageKey<String>('carousel_slider'),
                  ),
                  items: sliders,
                ));
          }
        });
  }
}
