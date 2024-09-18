import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/constants/pictures.dart';
import 'package:cookpad/src/view/Home_views/home_view/home_widget/smallContainer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationAllContainer extends StatelessWidget {
   String txt;
  NotificationAllContainer({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:92.sp ,
      width: 340.sp,
      decoration: BoxDecoration(
        color: AppColors.cardclr,
        borderRadius: BorderRadius.circular(10),
        
      ),
      child: Column(
        children: [
         Padding(
           padding: const EdgeInsets.only(
              top: 5,bottom: 5,
               left: 10,
               right: 10),
           child:  Container(
               child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(children: [
                       Padding(
                         padding: const EdgeInsets.only(right: 90),
                         child: TextWidget(txt: txt,fntwt: FontWeight.w600,fntsze: 14.sp,),
                       ),
                       SizedBox(height: 5,),
                       TextWidget(txt: 'Lorem Ipsum tempor incididunt ut labore \net dolore,in voluptate velit esse cillum',clr:AppColors.greyColor,fntwt: FontWeight.w400,fntsze: 11.sp,),
                     ]
                     ),


                     Padding(
                       padding: const EdgeInsets.only(bottom: 20),
                       child: Container(
                         height:28.sp ,
                         width: 28.sp,
                         decoration: BoxDecoration(

                           borderRadius: BorderRadius.circular(10),
                           color: AppColors.lightOrangeColor,
                         ),
                         child: Image.asset(Pic.msgg),
                       ),
                     )])
           )
           // child: SmallContainerWidget(
           //   btm: 40,
           //   hgt:28.sp,
           //   wdth: 28.sp,txt: "New Recipe Alert!",txt1: 'Lorem Ipsum tempor incididunt ut labore \net dolore,in voluptate velit esse cillum',
           // path: Pic.msgg,
           // ),
         ),
          //SizedBox(height: 5,),
          Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextWidget(txt: '30 mins ago',clr: AppColors.greyColor,fntsze: 7.sp,fntwt: FontWeight.w400,),
              ),
            ],
          )
        ],
      ),
    );
  }
}
