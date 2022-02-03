// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:login/constants.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textcolor;

  const RoundButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textcolor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      width: size.width * 0.6,
      //  color: color,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
          //  padding: EdgeInsets.all(15),
          //color: color,
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(color: textcolor),
          ),
          style: ElevatedButton.styleFrom(
            primary: color,
          ),
        ),
      ),
    );
  }
}
