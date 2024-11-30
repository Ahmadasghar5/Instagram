import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:instagram/common/app_widgets.dart';
import 'package:instagram/utils/sizes.dart';

class SignUp extends StatelessWidget {
  const SignUp({
    super.key,
    required this.headerText,
    required this.descriptionText,
    this.verificationText,
    this.verificationRichText,
    required this.fieldLabelText,
    this.firstButtonText = "Next",
    required this.secondButtonText,
    required this.onTapSecondButton,
    required this.onTapFirstButton,
    required this.onTapBackButton,
  });

  final String headerText;
  final String descriptionText;
  final String? verificationText;
  final String? verificationRichText;
  final String fieldLabelText;
  final String firstButtonText;
  final String secondButtonText;
  final VoidCallback onTapFirstButton;
  final VoidCallback onTapSecondButton;
  final VoidCallback onTapBackButton;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                  onTap: onTapBackButton,
                  child: const Icon(Icons.arrow_back),
                ),
                XSize.boxHeight(0.015),
                Text(
                  headerText,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                XSize.boxHeight(0.01),
                Text(
                  descriptionText,
                  style: TextStyle(color: Colors.grey.shade800),
                ),

                /// checkPost => verificationText
                if (verificationRichText != null) ...[
                  Text.rich(TextSpan(
                      text: verificationRichText,
                      style: TextStyle(
                          color: Colors.blue.shade700,
                          fontSize: 16,
                          fontWeight: FontWeight.w500))),
                ],
                XSize.boxHeight(0.025),
                XTextFormField(
                  textLabel: fieldLabelText,
                ),
                XSize.boxHeight(0.02),

                /// checkPost => verificationText
                if (verificationText != null) ...[
                  Text(
                    verificationText!,
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ],
                XSize.boxHeight(0.015),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    XTextButton(
                      onTap: () {},
                      buttonText: firstButtonText,
                      backGroundColor: Colors.blue.shade700,
                      borderColor: Colors.blue.shade700,
                    ),

                    /// checkPost => verificationRichText
                    if (verificationRichText != null) ...[
                      XSize.boxHeight(0.02),
                      Text(
                        "Search by mobile number instead",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      XSize.boxHeight(0.015),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.3,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'OR',
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 0.3,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                    XSize.boxHeight(0.015),
                    XTextButton(
                      buttonIcon: (verificationRichText != null)
                          ? FaIcon(
                              FontAwesomeIcons.facebook,
                              size: 20,
                            )
                          : null,
                      onTap: onTapSecondButton,
                      buttonText: secondButtonText,
                      backGroundColor: Colors.white,
                      buttonTextColor: Colors.black,
                      borderColor: Colors.grey.shade300,
                      buttonHeight: (verificationRichText != null) ? 15 : 48,
                    ),

                    /// checkPost => verificationText
                    if (verificationText == null) ...[
                      XSize.boxHeight(0.124),
                    ],
                    XSize.boxHeight(0.27),
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
                    Positioned(
                      bottom: 50,
                      child: Row(
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
