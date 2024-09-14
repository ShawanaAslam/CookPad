import 'package:cookpad/src/common_widgets/row_widget.dart';
import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:cookpad/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class IngrdntFirstRow extends StatelessWidget {
  String txt;
  String txt1;
   IngrdntFirstRow({super.key,required this.txt,required this.txt1});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
   RowWidget(txt: txt,fntsze: 14.sp,fntwt: FontWeight.w600,),
        SizedBox(width: 10,),
        Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: TextWidget(txt: txt1,clr:AppColors.greyColor,fntwt: FontWeight.w400,fntsze: 14.sp,),
        )
      ],
    );
  }
}
