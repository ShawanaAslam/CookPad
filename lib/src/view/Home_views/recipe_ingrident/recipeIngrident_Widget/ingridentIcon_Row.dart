import 'package:cookpad/src/common_widgets/row_widget.dart';
import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/constants/pictures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class IngridentIconRow extends StatelessWidget {
  String ing;
   IngridentIconRow({super.key, required this.ing});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image(image: AssetImage(Pic.top)),
      SizedBox(width: 5,),
      RowWidget(txt: '1 serve',clr: AppColors.greyColor,fntsze: 11.sp,fntwt: FontWeight.w400,),
      SizedBox(width: 150,),
      RowWidget(txt: '10 $ing',clr: AppColors.greyColor,fntsze: 11.sp,fntwt: FontWeight.w400),

    ],);
  }
}
