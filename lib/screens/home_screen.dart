import 'package:flutter/material.dart';
import 'package:oumi/components/carousel.dart';
import 'package:oumi/screens/products.dart';
import 'package:oumi/helper/images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          CarouselComponent(),
          products(),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(48.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Tentang Kami",
                          style: TextStyle(
                            shadows: [
                              Shadow(
                                  color: Color(0xFF666666),
                                  offset: Offset(0, -24))
                            ],
                            fontSize: 30.0,
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xFF666666),
                            decorationThickness: 4,
                            decorationStyle: TextDecorationStyle.solid,
                          ),
                        ),
                      ),
                      Text(
                          "Silahkan hubungi kami untuk ifnormasi lebih lanjut:"),
                      Row(
                        children: <Widget>[
                          Icon(Icons.whatsapp),
                          Text("082-257-257-197"),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          ImageIcon(AssetImage("images/icons/instagram.png")),
                          Text("oumi.label"),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          ImageIcon(AssetImage("images/icons/shopee.png")),
                          Text(
                            "Shopee",
                          ), // https://shopee.co.id/oumi.label?categoryId=100014&entryPoint=ShopByPDP&itemId=13806170246&upstream=search
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Tentang Kami",
                          style: TextStyle(
                            shadows: [
                              Shadow(
                                  color: Color(0xFF666666),
                                  offset: Offset(0, -24))
                            ],
                            fontSize: 30.0,
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xFF666666),
                            decorationThickness: 4,
                            decorationStyle: TextDecorationStyle.solid,
                          ),
                        ),
                      ),
                      Text(
                          "Silahkan hubungi kami untuk ifnormasi lebih lanjut:"),
                      Row(
                        children: <Widget>[
                          Icon(Icons.whatsapp),
                          Text("082-257-257-197"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
