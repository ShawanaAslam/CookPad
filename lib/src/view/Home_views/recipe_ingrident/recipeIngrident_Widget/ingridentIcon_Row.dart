import 'package:cookpad/src/common_widgets/row_widget.dart';
import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/constants/pictures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class IngridentIconRow extends StatelessWidget {
  const IngridentIconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image(image: AssetImage(Pic.top)),
      SizedBox(width: 5,),
      RowWidget(txt: '1 serve',clr: AppColors.greyColor,fntsze: 11.sp,fntwt: FontWeight.w400,),
      SizedBox(width: 150,),
      RowWidget(txt: '10 items',clr: AppColors.greyColor,fntsze: 11.sp,fntwt: FontWeight.w400),

    ],);
  }
}
