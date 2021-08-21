import 'package:cars/shared/constants.dart';
import 'package:cars/shared/global_config.dart';
import 'package:cars/view/widgets/custom_car_data_details.dart';
import 'package:cars/view/widgets/custom_gridview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class CarDetailsScreen extends StatelessWidget {



  List<String> dataName = [
    'اللون الخارجي',
    'اللون الداخلي',
    'نوع المقعد',
    'فتحه السقف',
    'كاميرا خلفيه',
    'سينسر',
    'سليندر',
    'ناقل الحركه',
  ];



  List<Widget> dataDetails = [
   Text( 'ابيض'),
   Text( 'بيج'),
   Text( 'مخمل'),
   Icon(Icons.check),
    Icon(Icons.check),
    Text( 'امامي - خلفي'),
    Text( '6'),
    Text( 'اتوماتيك'),
  ];



  List<IconData> dataIcons =[
    Icons.directions_car,
    Icons.directions_car_outlined,
    Icons.chair_alt_sharp,
    Icons.directions_car,
    Icons.camera,
    Icons.sensors,
    Icons.directions_car,
    Icons.directions_car,
  ];


  String carText = 'رنجات المنيوم 18 انش اسود وكروم-ديكور خشب+كروم-مقعد الساق الكهرباي-دوسات جانبيه-تحكم بالمقود مع تعديل يدوي-F1-نظام المرتفعات-سايت بريك كهرباي- مراه داخليك اتوماتيك-USB- Traction OFF-شاحن كهرباي-7مقاعد خلفي-جناح خلفي-عواكس خلفيه-سيرفيس منتظم بالوكاله ';

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child:  Column(

              children: [

                 Container(
                   height: 230.0.h,
                   width: ScreenUtil().screenWidth,
                   child: Container(
                     height: 150.0.h,
                     child: Stack(
                        children: [


                          Image.asset(imagesAssets+'car_details.png',
                            scale: 0.3.h,),

                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 8.0.h),
                            child:Column(
                              children: [

                                SizedBox(
                                  height: 5.0.h,
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Row(
                                      children: [

                                        CircleAvatar(
                                          backgroundColor: Colors.white.withOpacity(0.3),
                                          radius: 17.0.h,
                                          child: Center(
                                            child: Icon(Icons.favorite_border,
                                              color: Colors.black54,),
                                          ),

                                        ),

                                        SizedBox(
                                          width: 15.0.w,
                                        ),


                                        CircleAvatar(
                                          backgroundColor: Colors.white.withOpacity(0.3),
                                          radius: 17.0.h,
                                          child: Center(
                                            child: Icon(Icons.share,
                                              color: Colors.black54,
                                            ),
                                          ),

                                        ),
                                      ],
                                    ),

                                    CircleAvatar(
                                      backgroundColor: Colors.white.withOpacity(0.3),
                                      radius: 17.0.h,
                                      child: Center(
                                        child: GestureDetector(
                                          onTap: () => Get.back(),
                                          child: Icon(Icons.arrow_forward,
                                            color: Colors.black,
                                            size: 25.0.h,),
                                        ),
                                      ),

                                    ),

                                  ],
                                ),
                              ],
                            )

                          ),

                      Positioned.fill(
                       child: Align(
                         alignment: Alignment.bottomCenter,
                         child: Container(
                           height: 80.0.h,
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [

                               Container(
                                 alignment: Alignment.center,
                                 width: 100.0.w,
                                 padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                                 decoration: BoxDecoration(
                                     color: Color(0xfff7f7fd),
                                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                                 ),
                                 child: Column(

                                   children: [
                                     Image.asset(iconsAssets+'distance.png',),
                                     Text('الممشي',
                                     style: TextStyle(
                                       color: Colors.grey,
                                       fontSize: 14.sp
                                     ),),
                                     Text('2000',
                                     style: TextStyle(
                                       fontWeight: FontWeight.bold
                                     ),),

                                   ],
                                 ),
                               ),

                               Container(
                                 alignment: Alignment.center,
                                 width: 100.0.w,
                                 padding: EdgeInsets.symmetric(
                                   horizontal: 10.0.w,
                                   vertical: 4.0.h
                                 ),

                                 decoration: BoxDecoration(
                                     color: Color(0xfff7f7fd),
                                     borderRadius: BorderRadius.all(Radius.circular(10.0))
                                 ),
                                 child: Column(

                                   children: [

                                     Image.asset(iconsAssets+'calendar.png',
                                     scale: 1.1,),


                                     Text('سنه الصنع',
                                       style: TextStyle(
                                           color: Colors.grey,
                                           fontSize: 14.sp
                                       ),),
                                     Text('2019',
                                       style: TextStyle(
                                           fontWeight: FontWeight.bold
                                       ),),

                                   ],
                                 ),
                               ),


                               Container(
                                 alignment: Alignment.center,
                                 padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                                 width: 100.0.w,
                                 decoration: BoxDecoration(
                                     color: Color(0xfff7f7fd),
                                     borderRadius: BorderRadius.all(Radius.circular(10.0))
                                 ),
                                 child: Column(

                                   children: [

                                     Image.asset(iconsAssets+'engine.png'),
                                     Text('المحرك/سلندر',
                                       style: TextStyle(
                                           color: Colors.grey,
                                           fontSize: 14.sp
                                       ),),
                                     Text('6',
                                       style: TextStyle(
                                           fontWeight: FontWeight.bold
                                       ),),

                                   ],
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                     ),
                        ],
                      ),
                   ),
                 ),

                SizedBox(
                  height: 10.0.h,
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0.w),
                  padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        children: [

                          Text('د.ك',
                          style: TextStyle(
                            fontSize: 17.0.sp
                          ),),

                          SizedBox(
                            width: 8.0.h,
                          ),


                          Text(
                            '8,700',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0.sp,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          



                        ],
                      ),


                      
                      Text(
                        'يوكن بحاله جيده',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20.0.sp,
                          fontWeight: FontWeight.w500
                        ),
                      ),






                    ],
                  ),
                ),

                SizedBox(
                  height: 10.0.h,
                ),


                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0.w),
                  padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                  height: 35.0.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0.h)),
                    color: Color(0xffa45c5c)
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Text(
                        'مكفوله حتي 70000 كم',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: WHITE_COLOR,
                          fontSize: 17.0.sp,

                        ),
                      ),

                      SizedBox(
                        width: 10.0.w,
                      ),

                      Icon(
                        Icons.verified_user_outlined,
                        color: WHITE_COLOR,
                      )
                    ],
                  )



                ),

                SizedBox(
                  height: 20.0.h,
                ),

                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ...List.generate(dataName.length,
                            (index) =>
                            CustomCarDataDetails(
                              dataName: dataName[index],
                              dataDetails: dataDetails[index],
                              dataIcon: Icon(dataIcons[index],
                              size: 25.0.h,),
                            )
                    )
                  ],
                ),

                SizedBox(
                  height: 20.0.h,
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                  margin: EdgeInsets.symmetric(horizontal: 10.0.w),
                  child: Text(
                    carText,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 17.0.sp,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),

                SizedBox(
                  height: 20.0.h,
                ),


                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                  margin: EdgeInsets.symmetric(horizontal: 8.0.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0.h)),
                    color: Colors.grey.withOpacity(0.3)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                      Text(
                        'كل السياريات',
                        style: TextStyle(
                          fontSize: 16.0.sp,
                          fontWeight: FontWeight.w300
                        ),
                      ),
                      Text(
                          'يوكن للسيارات المعتمده ',
                        style: TextStyle(
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.w300
                        ),
                      ),


                      Container(
                        width: 50,
                        height: 50,
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage:
                          AssetImage(imagesAssets+'boy.jpeg'),
                        ),
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          border: new Border.all(
                            color:WHITE_COLOR,
                            width: 3.0
                          ),
                        ),
                      ),



                    ],
                  ),
                ),

                SizedBox(
                  height: 20.0.h,
                ),



                CustomGridView(gridLength: 2,),


                SizedBox(
                  height: 20.0.h,
                ),


                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 1.0.w),
                      padding: EdgeInsets.symmetric(horizontal: 15.0.h),
                      height: 30.0.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0.h)),

                        border: Border.all(
                          color: PRIMARY_DARK,
                        )
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [


                          Text(
                              'احجز السياره',
                            style: TextStyle(
                              fontSize: 15.0.sp
                            ),
                          ),

                          SizedBox(
                            width: 5.0.w,
                          ),
                          Icon(Icons.local_offer,
                          color: PRIMARY_DARK,)
                        ],
                      )

                    ),

                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 1.0.w),
                        padding: EdgeInsets.symmetric(horizontal: 15.0.h),
                        height: 30.0.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15.0.h)),
                          color: PRIMARY_DARK,
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [


                            Text(
                              'موقع السياره',
                              style: TextStyle(
                                  fontSize: 15.0.sp,
                                color: WHITE_COLOR
                              ),
                            ),

                            SizedBox(
                              width: 5.0.w,
                            ),
                            Icon(Icons.location_on_outlined,
                             color:WHITE_COLOR)
                          ],
                        )

                    ),

                    CircleAvatar(
                      radius: 20.0,
                      backgroundColor:Colors.deepPurpleAccent.withOpacity(0.1),
                      child: Center(
                        child: Icon(
                            Icons.chat_bubble_outline,
                          color: Colors.deepPurpleAccent.withOpacity(0.5),
                        ),
                      ),
                    ),

                    CircleAvatar(
                      radius: 20.0,
                      backgroundColor:Colors.green.withOpacity(0.1),
                      child: Center(
                        child: Icon(
                            Icons.phone_outlined,
                          color: Colors.green.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ],
                ),


                SizedBox(
                  height: 50.0.h,
                ),

              ],
            ),
          ),

      ),
    );
  }
}
