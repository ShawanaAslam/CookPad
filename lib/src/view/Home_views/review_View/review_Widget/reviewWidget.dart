import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/colors.dart';

//import '../../../../../constants/colors.dart';

class ReviewWidget extends StatelessWidget {
  String txt;
  String txt1;
  String txt2;
  String txt3;
  String txt4;
  String path;

   ReviewWidget({super.key,required this.txt,
    required this.txt1,required this.txt2,
     required this.txt3,required this.txt4,
   required this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 313.w,
     // height: 70.h,
      child: Column(children: [
        Row(children: [
          CircleAvatar(
backgroundImage: AssetImage(path),
          ),
          Column(children: [
           Padding(
             padding: const EdgeInsets.only(right: 29),
             child: TextWidget(txt: txt,fntwt: FontWeight.w600,fntsze: 11.sp,),
           ),
          SizedBox(height: 2,),
         Padding(
           padding: const EdgeInsets.only(left: 10),
           child:
          TextWidget(txt: txt1,fntwt: FontWeight.w400,fntsze: 11.sp,),
          ),
      ]
        ),]),
    SizedBox(height: 10,),
    TextWidget(txt: txt2,fntwt: FontWeight.w400,fntsze: 11.sp,),
        SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Container(
                  height: 16.sp,
                  width:37.sp ,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star,color: AppColors.orangeColor,size: 12,),
                      SizedBox(width: 2,),
                      Text(txt3,style: GoogleFonts.roboto(fontSize: 8.sp),)
                    ],
                  )
              ),
              SizedBox(width: 10,),
              Container(
                  height: 16.sp,
                  width:37.sp ,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star,color: AppColors.orangeColor,size: 12,),
                      SizedBox(width: 2,),
                      Text(txt4,style: GoogleFonts.roboto(fontSize: 8.sp),)
                    ],
                  )
              ),
            ],
          ),
        )

      ],
      )
    );
  }
}
