import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:instagram/common/app_widgets.dart';
import 'package:instagram/screens/auth/login/controller/login_controller.dart';
import 'package:instagram/utils/assets.dart';
import 'package:instagram/utils/sizes.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
          width: Get.width,
          padding: const EdgeInsets.all(15),
          child: Listener(
            behavior: HitTestBehavior.translucent,
            onPointerDown: (_) {
              FocusScope.of(context).unfocus();
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                XSize.boxHeight(0.06),
                Text.rich(
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        /// Backend
                      },
                    text: "English (US)",
                    style: TextStyle(color: Colors.grey.shade800),
                  ),
                ),
                XSize.boxHeight(0.06),
                Image.asset(
                  XAssets.logoImg,
                  width: XSize.xWidth(0.3),
                ),
                XSize.boxHeight(0.07),
                const XTextFormField(
                  textLabel: "Username, email or mobile number",
                ),
                XSize.boxHeight(0.023),
                Obx(
                  () => XTextFormField(
                    obscureText:
                        loginController.isPasswordVisible.value ? false : true,
                    controller: loginController.passwordController,
                    textLabel: 'Password',
                    suffixIcon: (loginController.passwordTextLength.value > 1)
                        ? GestureDetector(
                            onTap: () {
                              loginController.isPasswordVisible.value =
                                  !loginController.isPasswordVisible.value;
                            },
                            child: Icon(loginController.isPasswordVisible.value
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined),
                          )
                        : null,
                  ),
                ),
                XSize.boxHeight(0.015),
                const XTextButton(
                  buttonText: "Log In",
                ),
                XSize.boxHeight(0.013),
                Text.rich(
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        ///Backend
                      },
                    text: "Forgot password?",
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
                XSize.boxHeight(0.16),
                XTextButton(
                  buttonText: "Create new account",
                  buttonTextColor: Colors.blue.shade700,
                  borderColor: Colors.blue.shade700,
                  backGroundColor: Colors.white,
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
            ),
          ),
        ),
      ),
    );
  }
}
