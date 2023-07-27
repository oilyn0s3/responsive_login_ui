import 'package:flutter/material.dart';
import 'package:responsive_login_ui/components/gradient_button.dart';

import 'components/login_field.dart';
import 'components/pallate.dart';
import 'components/social_login_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/signin_balls.png"),
              const Text(
                "Sign in.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Pallete.whiteColor,
                ),
              ),
              const SizedBox(height: 50),
              SocialButton(
                icon: SvgPicture.asset(
                  "assets/svgs/g_logo.svg",
                  width: 25,
                  color: Pallete.whiteColor,
                ),
                label: "Continue with Google.",
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              SocialButton(
                icon: SvgPicture.asset(
                  "assets/svgs/f_logo.svg",
                  width: 25,
                  color: Pallete.whiteColor,
                ),
                label: "Continue with Facebook.",
                onPressed: () {},
                horizontalPadding: 90,
              ),
              const SizedBox(height: 15),
              const Text(
                "or",
                style: TextStyle(
                  color: Pallete.whiteColor,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 15),
              LoginField(
                controller: controller,
                hintText: "Email",
                obscureText: false,
              ),
              const SizedBox(height: 15),
              LoginField(
                controller: controller,
                hintText: "Password",
                obscureText: true,
              ),
              const SizedBox(height: 20),
              const GradientButton(),
            ],
          ),
        ),
      ),
    );
  }
}
