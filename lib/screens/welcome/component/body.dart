import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login/constants.dart';
import 'package:login/screens/login/login_screen.dart';
import 'package:login/screens/welcome/component/RoundButton.dart';
import 'package:login/screens/welcome/component/background.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello sat',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            SvgPicture.asset(
              'assets/icon/chat.svg',
            ),
            RoundButton(
              text: 'LOGIN1',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundButton(
              text: 'LOGIN',
              color: kPrimaryLightColor,
              textcolor: Colors.black,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
