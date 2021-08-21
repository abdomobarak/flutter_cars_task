
import 'package:flutter/material.dart';
import 'package:get/get.dart';


  // navigate to screen

  GetToScreen(Widget directScreen){

    Get.to(directScreen,
        transition: Transition.downToUp,
        duration: Duration(milliseconds: 500));
  }


  GetOffScreen(Widget directScreen){

     Get.off(directScreen,
      transition: Transition.downToUp,
      duration: Duration(milliseconds: 500));
   }


GetOffAllScreen(Widget directScreen){

  Get.offAll(directScreen,
      transition: Transition.downToUp,
      duration: Duration(milliseconds: 500));
}


