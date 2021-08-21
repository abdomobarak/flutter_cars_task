

  import 'package:cars/shared/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
  import 'package:flutter/material.dart';
  import 'package:get/get.dart';


showGetSnackbar(
    String message,
     Widget icon
    ){
    Get.snackbar(
      '',
      '',
      backgroundColor: Colors.white70,
      titleText: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: icon
          ),


          Text(message,
            style: TextStyle(
                color: PRIMARY_DARK,
                fontWeight: FontWeight.w600,
                fontSize: 18.0.sp
            ),),

        ],
      ),


    );
  }