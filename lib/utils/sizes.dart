import 'package:flutter/material.dart';
import 'package:get/get.dart';

class XSize{
  XSize._();

  static double xWidth (double size){
    return Get.width * size;
  }

  static double xHeight(double size){
    return Get.height * size;
  }

  static Widget boxWidth (double size){
    return SizedBox(width: Get.width * size,);
  }

  static Widget boxHeight (double size){
    return SizedBox(height: Get.height * size,);
  }
}