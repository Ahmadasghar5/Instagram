import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:instagram/common/app_widgets.dart';
import 'package:instagram/utils/sizes.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: context.width,
          padding: const EdgeInsets.all(15),
          child: Listener(
            behavior: HitTestBehavior.translucent,
            onPointerDown: (_) {
              FocusScope.of(context).unfocus();
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    /// Backend
                  },
                  child: Icon(Icons.arrow_back),
                ),
                XSize.boxHeight(0.015),
                Text(
                  "What's Your mobile \nnumber?",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                XSize.boxHeight(0.01),
                Text(
                  "Enter the mobile number where you can \nbe contacted. No one will see this on your \nprofile. ",
                  style: TextStyle(color: Colors.grey.shade800),
                ),
                XSize.boxHeight(0.03),
                XTextFormField(
                  textLabel: "Mobile number",
                ),
                XSize.boxHeight(0.02),
                Text(
                  "You may receive WhatsApp and SMS notifications \nfrom us for security and login purposes.",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
                XSize.boxHeight(0.015),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                XTextButton(
                  buttonText: "Next",
                  backGroundColor: Colors.blue.shade700,
                  borderColor: Colors.blue.shade700,
                ),
                XSize.boxHeight(0.015),
                XTextButton(
                  buttonText: "Sign up with email",
                  backGroundColor: Colors.white,
                  buttonTextColor: Colors.black,
                  borderColor: Colors.grey.shade300,
                ),
                XSize.boxHeight(0.28),
                Text.rich(
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        /// Backend
                      },
                    text: "I already have an account",
                    style: TextStyle(
                        color: Colors.blue.shade700,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                XSize.boxHeight(0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.solidChessBishop,
                      color: Colors.grey,
                      size: 20,
                    ),
                    XSize.boxWidth(0.02),
                    Text(
                      "hitman - monk",
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
