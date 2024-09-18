

import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/colors.dart';
import 'ingridentIcon_Row.dart';

class ProedureContainer extends StatelessWidget {
  const ProedureContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child:Column(children:[
        IngridentIconRow(ing: 'Steps',),
        SizedBox(
          height: 10,
        ),
       Container(
         height:93.sp ,
         width: 315.sp,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: AppColors.cardclr
         ),
         child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(right: 223,top: 10),
               child: TextWidget(txt: 'Step 1',fntwt: FontWeight.w600,fntsze: 13.sp,),
             ),
             SizedBox(height: 5,),
             TextWidget(txt: 'Lorem Ipsum tempor incididunt ut labore et \ndolore,in voluptate velit esse cillum dolore eu fugiat \nnulla pariatur?',
               fntwt: FontWeight.w400,fntsze: 11.sp,clr: AppColors.greyColor,)
           ],
         ),
       ),
        SizedBox(height: 8,),
        Container(
          height:127.sp ,
          width: 315.sp,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.cardclr
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 223,top: 10),
                child: TextWidget(txt: 'Step 2',fntwt: FontWeight.w600,fntsze: 13.sp,),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextWidget(txt: 'Lorem Ipsum tempor incididunt ut labore et \ndolore,in voluptate velit esse cillum dolore eu fugiat \nnulla pariatur?\n'
                  'Tempor incididunt ut labore et dolore,in voluptate /nvelit esse cillum dolore eu fugiat nulla pariatur?',
                  fntwt: FontWeight.w400,fntsze: 11.sp,clr: AppColors.greyColor,),
              )
            ],
          ),
        ),
        SizedBox(height: 8,),
        Container(
          height:93.sp ,
          width: 315.sp,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.cardclr
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 223,top: 10),
                child: TextWidget(txt: 'Step 3',fntwt: FontWeight.w600,fntsze: 13.sp,),
              ),
              SizedBox(height: 5,),
              TextWidget(txt: 'Lorem Ipsum tempor incididunt ut labore et \ndolore,in voluptate velit esse cillum dolore eu fugiat \nnulla pariatur?',
                fntwt: FontWeight.w400,fntsze: 11.sp,clr: AppColors.greyColor,)
            ],
          ),
        ),
      ]
      )
    );
  }
}