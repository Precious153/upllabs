import 'package:flutter/material.dart';


class SliderContent extends StatelessWidget {
  const SliderContent(
      {Key? key, required this.image, required this.text, required this.title})
      : super(key: key);

  final String image, text, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 450,
              decoration: BoxDecoration(
                color: Color(0xff363cc0),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(250,60),
                    bottomRight: Radius.elliptical(250, 100)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height:200,
                      width: 350,
                      child: Image.asset(image)),
                ],
              ),
            ),
          ],
        ),

SizedBox(height: 10.0,),

        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Colors.black
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 13),
          child: Text(
            text,
            style:  TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.grey
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
