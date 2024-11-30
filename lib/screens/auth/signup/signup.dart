import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram/screens/auth/login/login.dart';
import 'package:instagram/screens/auth/signup/widgets_signup/widgets.dart';

class SignUpWithPhoneNumber extends StatelessWidget {
  const SignUpWithPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return SignUp(
      headerText: "What's your mobile \nnumber?",
      descriptionText:
          "Enter the mobile number where you can \nbe contacted. No one will see this on your \nprofile. ",
      verificationText:
          "You may receive WhatsApp and SMS notifications \nfrom us for security and login purposes.",
      fieldLabelText: "Mobile number",
      secondButtonText: "Sign up with email",
      onTapSecondButton: () {
        Get.off(const SignUpWithEmail());
      },
      onTapFirstButton: () {},
      onTapBackButton: () {
        Get.off(Login());
      },
    );
  }
}

class SignUpWithEmail extends StatelessWidget {
  const SignUpWithEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return SignUp(
      headerText: "What's your email?",
      descriptionText:
          "Enter the email where you can be contacted.\nNo one will see this on your profile",
      fieldLabelText: "Email",
      secondButtonText: "Sign up with mobile number",
      onTapSecondButton: () {},
      onTapFirstButton: () {},
      onTapBackButton: () {
        Get.off(const SignUpWithPhoneNumber());
      },
    );
  }
}

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SignUp(
      headerText: "Find your account",
      descriptionText: "Enter your email or username",
      verificationText:
          "You may receive WhatsApp and SMS notifications\nfrom us for security and login purposes.",
      verificationRichText: "Can't reset your password?",
      fieldLabelText: "Email or username",
      firstButtonText: "Continue",
      secondButtonText: "Log in with Facebook",
      onTapFirstButton: () {},
      onTapSecondButton: () {},
      onTapBackButton: () {
        Get.off(Login());
      },
    );
  }
}
