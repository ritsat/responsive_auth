import 'package:flutter/material.dart';
import 'package:responsive_auth/components/mobile_layout.dart';
import 'package:responsive_auth/components/responsive_layout.dart';
import 'package:responsive_auth/components/web_layout.dart';
import 'package:responsive_auth/screens/signin/login_form.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        webChild: WebLayout(
          imageWidget: Image.asset(
            "assets/images/login.png",
            width: 150,
          ),
          dataWidget:
              LoginForm(), //Lets create widget for login form & use here
        ),
        mobileChild: MobileLayout(
          imageWidget: Image.asset(
            "assets/images/login.png",
            width: 75,
          ),
          dataWidget: LoginForm(),
        ));
  }
}
