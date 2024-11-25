import 'package:flutter/material.dart';
import 'package:instagram/utils/sizes.dart';

class XTextButton extends StatelessWidget {
  const XTextButton({
    super.key,
    required this.buttonText,
    this.buttonTextColor = Colors.white,
    this.backGroundColor = Colors.blueAccent,
    this.borderColor = Colors.blue,
  });

  final String buttonText;
  final Color buttonTextColor;
  final Color backGroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        side: BorderSide(color: borderColor, width: 1.5),
        backgroundColor: backGroundColor,
        fixedSize: Size(XSize.xWidth(0.86), XSize.xHeight(0.06)),
      ),
      child: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor, fontSize: 16),
      ),
    );
  }
}

class XTextFormField extends StatelessWidget {
  const XTextFormField({
    super.key,
    required this.textLabel,
    this.suffixIcon,
    this.controller,
    this.obscureText = false,
  });

  final String textLabel;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        labelText: textLabel,
        labelStyle: TextStyle(color: Colors.grey.shade600,fontSize: 17,),
        contentPadding: const EdgeInsets.all(15),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade700,),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
      ),
    );
  }
}
