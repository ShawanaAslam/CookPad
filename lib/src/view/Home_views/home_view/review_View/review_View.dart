import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/view/Home_views/home_view/review_View/review_Widget/reviewWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common_widgets/text-widget.dart';
import '../../recipe_ingrident/recipeIngrident_Widget/ingrdntFirst_Row.dart';

class ReviewView extends StatefulWidget {
  const ReviewView({super.key});

  @override
  State<ReviewView> createState() => _ReviewViewState();
}

class _ReviewViewState extends State<ReviewView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  AppColors.scaffoldColor,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldColor,
        leading: Icon(Icons.arrow_back),
        title: TextWidget(txt: 'Reviews',fntsze: 18.sp,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(txt: '200 Comments',clr:AppColors.greyColor,fntsze: 11.sp,fntwt: FontWeight.w400,),

                TextWidget(txt: '155 Saved',clr:AppColors.greyColor,fntsze: 11.sp,fntwt: FontWeight.w400,),
              ],
            ),

            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextWidget(txt: 'Leave a comment',fntsze: 15.sp,fntwt: FontWeight.w400,),
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ReviewWidget(txt: 'Bella Throne',txt1: 'June 12, 2020 - 19:35',
              txt2: 'Lorem Ipsum tempor incididunt ut labore et dolore,inise \nvoluptate velit esse cillum',
              txt3: '4',txt4: '5',),
            ),
          ],
        ),
      ),
    );
  }
}
