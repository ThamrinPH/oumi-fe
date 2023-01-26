import 'package:flutter/material.dart';

class products extends StatelessWidget {
  const products({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.only(top: 24.0, bottom: 24.0),
      child: Column(
        children: <Widget>[
          Text(
            'Products',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Our best choices',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w100,
            ),
          ),
          SizedBox(
            height: 24.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child:
                      Image.asset('images/pexels-michael-burrows-7147604.jpg'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child:
                      Image.asset('images/pexels-michael-burrows-7147604.jpg'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child:
                      Image.asset('images/pexels-michael-burrows-7147604.jpg'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child:
                      Image.asset('images/pexels-michael-burrows-7147604.jpg'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
