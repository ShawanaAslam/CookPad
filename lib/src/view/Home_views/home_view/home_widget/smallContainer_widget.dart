import 'package:cookpad/src/constants/pictures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common_widgets/text-widget.dart';
import '../../../../constants/colors.dart';
class SmallContainerWidget extends StatelessWidget {
  String txt;
  String txt1;
  String path;
  double hgt;
  double wdth;
  double btm;
  //double fntwt;
  //double fntsze;

   SmallContainerWidget({super.key,required this.txt,required this.btm,
     required this.wdth,required this.hgt,
    // required this.fntsze,
     //required this.fntwt,
     required this.txt1,required this.path});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      Column(children: [
       Padding(
         padding: const EdgeInsets.only(right: 50),
         child: TextWidget(txt: txt,fntwt: FontWeight.w600,fntsze: 20.sp,),
       ),
       SizedBox(height: 5,),
       TextWidget(txt: txt1,clr:AppColors.greyColor,fntwt: FontWeight.w400,fntsze: 11.sp,),
      ]
    ),


    Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height:hgt ,
        width: wdth,
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(10),
          color: AppColors.lightOrangeColor,
        ),
        child: Image.asset(path,),
      ),
    )])
    );
  }
}
