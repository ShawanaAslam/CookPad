import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.grey,
            //  thickness: 2,
            indent: 50,
            endIndent: 8,
          ),
        ),
        TextWidget(
          txt: 'or Sign in With',
          fntsze: 11.sp,
          clr: Colors.grey,),
        Expanded(
          child: Divider(
            color: Colors.grey,
            // thickness: 2,
            indent: 8,
            endIndent: 50,
          ),
        ),
      ],
    );
  }
}
