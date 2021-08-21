import 'package:cars/shared/constants.dart';
import 'package:flutter/material.dart';



class CustomTextField extends StatelessWidget {

  String? hintText;
  CustomTextField({this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        cursorColor: PRIMARY_DARK,
        textAlign: TextAlign.center,
        decoration: new InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 20,
              fontWeight: FontWeight.w500,),
          contentPadding: EdgeInsets.all(8.0),
        )
    );
  }
}
