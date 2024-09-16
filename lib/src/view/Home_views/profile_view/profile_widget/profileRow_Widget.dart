import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/constants/pictures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileRowWidget extends StatelessWidget {
  const ProfileRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 45,
          backgroundImage: AssetImage(Pic.img),
        ),
        SizedBox(width: 25,),
        Column(
          children: [
            TextWidget(txt: 'Recipe',clr: AppColors.greyColor,fntwt: FontWeight.w400,fntsze: 11.sp,),
            SizedBox(height: 10,),
            TextWidget(txt: '4',fntwt: FontWeight.w600,fntsze: 20.sp,)
          ],
        ),
        SizedBox(width: 25,),
        Column(
          children: [
            TextWidget(txt: 'Followers',clr: AppColors.greyColor,fntwt: FontWeight.w400,fntsze: 11.sp,),
            SizedBox(height: 10,),
            TextWidget(txt: '2.5M',fntwt: FontWeight.w600,fntsze: 20.sp,)
          ],
        ),
        SizedBox(width: 25,),
        Column(
          children: [
            TextWidget(txt: 'Following',clr: AppColors.greyColor,fntwt: FontWeight.w400,fntsze: 11.sp,),
            SizedBox(height: 10,),
            TextWidget(txt: '259',fntwt: FontWeight.w600,fntsze: 20.sp,)
          ],
        )
      ],
    );
  }
}
