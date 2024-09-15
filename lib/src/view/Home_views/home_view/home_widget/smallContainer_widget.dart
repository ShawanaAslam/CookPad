import 'package:cookpad/src/constants/pictures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common_widgets/text-widget.dart';
import '../../../../constants/colors.dart';
class SmallContainerWidget extends StatelessWidget {
  const SmallContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      Column(children: [
       Padding(
         padding: const EdgeInsets.only(right: 50),
         child: TextWidget(txt: 'Hello Fola',fntwt: FontWeight.w600,fntsze: 20.sp,),
       ),
       SizedBox(height: 5,),
       TextWidget(txt: 'What are you cooking today?',clr:AppColors.greyColor,fntwt: FontWeight.w400,fntsze: 11.sp,),
      ]
    ),


    Container(
      height:40.sp ,
      width: 40.sp,
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(10),
       // color: AppColors.lightOrangeColor,
      ),
      child: Image.asset(Pic.child),
    )])
    );
  }
}
