import 'package:cars/shared/constants.dart';
import 'package:cars/shared/get_navigate_functions.dart';
import 'package:cars/shared/global_config.dart';
import 'package:cars/view/screens/car_details-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CustomGridView extends StatelessWidget {

  int? gridLength;
  CustomGridView({this.gridLength});


  List<String> carsImages = [
    'car2.png',
    'car1.png',
    'car3.png',
    'car2.png',
    'car3.png',
    'car1.png',
    'car3.png',
    'car1.png',
    'car2.png',
    'car3.png',

  ];


  List<String> carsCata = [
    'مكفوله ل',
    'كم',
    'سنه الصنع',
     'السعر',



  ];


  List<String> carsData= [
    '2021',
    '20000',
    '2019',
    '12.700',
  ];




  List<Widget> iconsList =[
    Icon(Icons.verified_user_outlined,
      color: PRIMARY_DARK,),

    Icon(Icons.account_circle_outlined,
      color: Colors.amber,),

    Icon(Icons.calendar_today,
      color: Colors.green.withOpacity(0.5),),

    Icon(Icons.money,
    color: PRIMARY_DARK,),



  ];


  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0.w),
      padding: EdgeInsets.only(top:10.0.h),
      child: new StaggeredGridView.countBuilder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        itemCount: gridLength == null?
        carsImages.length:gridLength,
        crossAxisSpacing: 2.0.w,
        mainAxisSpacing: 10.0.h,
        staggeredTileBuilder: (index) => StaggeredTile.fit(1),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              GetToScreen(CarDetailsScreen());
            },
            child:Container(
              color: index %2 ==0?
                  Colors.grey.withOpacity(0.3):Colors.grey.withOpacity(0.8),
              child:  Column(
                children: [

                  Text(
                    'جي ام سي | يوكن | الفئه الرابعه',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500
                    ),
                  ),

                  Image.asset(imagesAssets+carsImages[index]) ,

                  Container(
                    height: 70.0.h,
                    color: Colors.grey.withOpacity(0.1),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...List.generate(iconsList.length,
                                (index) =>

                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight:Radius.circular(8.0.w),
                                            topLeft:Radius.circular(8.0.w),
                                        ),
                                        color: Colors.white
                                      ),

                                       child: Column(
                                         children: [

                                           iconsList[index],


                                           Text(
                                             carsCata[index],
                                             style: TextStyle(
                                               fontSize: 12.sp,
                                                 fontWeight: FontWeight.w500
                                             ),
                                           ),

                                           Text(
                                               carsData[index],
                                             style: TextStyle(
                                                 fontSize: 12.sp,
                                               fontWeight: FontWeight.bold,
                                               color: PRIMARY_DARK
                                             ),
                                           ),


                                         ],
                                       ),
                                    )
                        )
                      ],
                    ),
                  ),


                ],
              )

            )

          );
        },
      ),
    );
  }
}
