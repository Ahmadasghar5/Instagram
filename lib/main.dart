import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram/screens/auth/login/login.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
