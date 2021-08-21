import 'package:cars/shared/constants.dart';
import 'package:cars/shared/global_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CarsKindHorizentalList extends StatelessWidget {

  List<String> carsImagesList = [
    'car1.png',
    'car2.png',
    'car3.png',
    'car1.png',
    'car3.png',
    'car2.png',
    'car1.png',
    'car3.png',
    'car2.png',
    'car1.png',
    'car2.png',
  ];

  List<String> carsKind =[
    'جيلي',
    'بي ام دبليو',
    'توياتا',
    'بي ام دبليو',
    'جيلي',
    'توياتا',
    'بي ام دبليو',
    'توياتا',
    'جيلي',
    'بي ام دبليو',
    'جيلي',
  ];

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 120.0.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [

          ...List.generate(
              carsImagesList.length,
                  (index) =>

                  Column(
                    children: [

                      Container(
                        width: 100,
                        height: 80,
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage:
                          AssetImage(imagesAssets+carsImagesList[index]),
                        ),
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          border: new Border.all(
                            color:ORANGE_COLOR,
                          ),
                        ),
                      ),

                      Text(carsKind[index],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17.0.sp
                      ),)
                    ],
                  )

          )
        ],
      ),
    );
  }
}
