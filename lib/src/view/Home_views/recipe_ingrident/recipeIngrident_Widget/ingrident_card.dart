import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:cookpad/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IngridentCard extends StatelessWidget {
  String txt;
  String txt2;
  String path;
  double? wdt;
  IngridentCard({super.key,required this.txt,required this.txt2,required
  this.path,this.wdt});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.cardclr
      ),
height: 76.sp,
width: 315.sp,
child: Row(
  children: [
    Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: 52.sp,
        width: 52.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
      color: Colors.white
        ),
        child:Image.asset(path),
      ),
    ),
    SizedBox(width: 15,),
    TextWidget(txt: txt,fntsze: 16.sp,fntwt: FontWeight.w600,),
    SizedBox(width: wdt,),
    TextWidget(txt: txt2,clr: AppColors.greyColor,fntsze: 14.sp,fntwt: FontWeight.w400,),

  ],
),
    );
  }
}
