import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common_widgets/text-widget.dart';
import '../../../../constants/pictures.dart';
import 'homewidget_one.dart';
import 'homewidget_two.dart';

class AllhomeWidget extends StatelessWidget {
  const AllhomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            HomeWidgetOne(txt:'Classic Greek \n        Salad',txt1: '15 Mins',path: Pic.rice,),
            SizedBox(width: 10,),
            HomeWidgetOne(txt:'Crunchy Nut \n  Coleslaw',txt1: '10 Mins',path: Pic.bowl,),
            SizedBox(width: 10,),
            HomeWidgetOne(txt:'Classic Greek \n        Salad',txt1: '30 Mins',path: Pic.burgr,)
          ],),
        ),
        SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(txt: 'New Recipes',fntsze: 16.sp,fntwt: FontWeight.w600,),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HomeWidgetTwo(txt: 'By James Milner',path: Pic.burgr,path1: Pic.boy,),
              HomeWidgetTwo(txt: 'By Laura',path: Pic.nodles,path1: Pic.boy,),
            ],
          ),
        )


      ],
  //  ),
    //),
      //],
    );
  }
}
