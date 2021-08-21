import 'package:cars/shared/constants.dart';
import 'package:cars/shared/global_config.dart';
import 'package:cars/view/widgets/cars_kinds_horizental_list.dart';
import 'package:cars/view/widgets/custom_gridview.dart';
import 'package:cars/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomeScreen extends StatelessWidget {

List<String> nationalList =[
  'امريكي',
  'اوروبي',
  'اسيوي',

];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Stack(
          children: [


            IconButton(
              onPressed: (){},
              icon: Image.asset(
                iconsAssets+'notification_bell.png',
                scale: 3.0.h,),

            ),

            new Positioned(
              right:15.0.h,
              top: 5.h,
              child: new Container(
                padding: EdgeInsets.all(2),
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  color:ORANGE_COLOR,
                  border: new Border.all(
                    color:Colors.white,
                    width: 1.5.h
                  ),
                ),
                constraints: BoxConstraints(
                  minWidth: 15.0.w,
                  minHeight: 15.0.h,
                ),
                child: Text(
                  '2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: Icon(
              Icons.list,
              color: WHITE_COLOR,
            size: 30.0.h,),
          ),
        ],
      ),

      body: Container(
       // padding: EdgeInsets.symmetric(horizontal: 8.0.w),
       // margin: EdgeInsets.symmetric(horizontal: 8.0.w),
        child: SingleChildScrollView(
          child: Column(

            children: [

              SizedBox(
                height: 10.0.h,
              ),


              CarsKindHorizentalList(),

              // SizedBox(
              //   height: 10.0.h,
              // ),

              Image.asset(
                imagesAssets+'slide.png',
              ),


              SizedBox(
                height: 10.0.h,
              ),

               Container(
                 padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                 margin: EdgeInsets.symmetric(horizontal: 10.0.w),
                 alignment: Alignment.center,
                // height: 30.0.h,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.all(Radius.circular(10.0.h)),
                   border: Border.all(
                     color: Colors.grey
                   ),
                 ),

                 child: ListTile(
                   title: CustomTextField(hintText:  'ابحث عن سيارتك',),
                   trailing: Icon(Icons.search,
                   color: PRIMARY_DARK,
                   size: 30.0,),
                 ),

               ),


              SizedBox(
                height: 20.0.h,
              ),


              Container(
                // padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                // margin: EdgeInsets.symmetric(horizontal: 20.0.w),
                // alignment: Alignment.center,
                height: 30.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [

                   ...List.generate(
                       nationalList.length,
                           (index) =>
                               Container(
                                 //padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                                 margin: EdgeInsets.symmetric(horizontal: 10.0.w),
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                   color: PRIMARY_DARK
                                 ),
                                 child: Padding(
                                   padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                   child: Text(
                                       nationalList[index],
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                       color: WHITE_COLOR,
                                       fontSize: 17.0.sp
                                     ),
                                   ),
                                 ),
                               )
                   )
                  ],
                ),
              ),


              SizedBox(
                height: 10.0.h,
              ),



              CustomGridView(),


               Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    width: ScreenUtil().screenWidth,
                    child: Image.asset(
                      imagesAssets+'footer.png',
                      scale: 0.5,

                    ),
                  ),
                ),


            ],
          ),
        ),
      ),
    );
  }
}
