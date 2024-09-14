import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/constants/pictures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IngridentCirclRow extends StatelessWidget {
  const IngridentCirclRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(Pic.boy),
        ),
      SizedBox(width: 5,),
      Container(
        child: Column(children: [
          TextWidget(txt: 'Laura wilson',),
          Row(
            children: [
              Icon(Icons.location_on_rounded,color: AppColors.primaryColor,),
                       TextWidget(txt: 'Logos, Nigeria',clr:AppColors.greyColor,fntwt: FontWeight.w400,fntsze: 11.sp,),
            ],
          )
        ],),
      ),
        SizedBox(width:75,),
        InkWell(
    onTap: (){},
          child: Container(
            height: 37.h,
            width: 85.w,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10.r)),
            child: Center(child: TextWidget(txt: 'Follow',fntsze: 11.sp,fntwt: FontWeight.w600,clr: Colors.white,)),
          ),
        )

       ],
    );
  }
}
