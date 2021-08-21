import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarDataDetails extends StatelessWidget {


  String? dataName;
  var dataIcon;
  var dataDetails;
  CustomCarDataDetails({this.dataDetails, this.dataIcon, this.dataName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.all(5.0.h),
            margin: EdgeInsets.only(right: 20.0.w),
            color: Colors.grey.withOpacity(0.2),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                SizedBox(
                  width: 20.0.w,
                ),

                dataDetails,



                Row(
                  children: [
                    Text(dataName.toString(),
                    style: TextStyle(
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.bold
                    ),),

                    SizedBox(
                      width: 10.0.w,
                    ),

                    dataIcon,

                  ],
                ),


              ],
            )),
        SizedBox(
          height: 2.0.h,
        ),
      ],
    );
  }
}
