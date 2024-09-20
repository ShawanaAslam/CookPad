import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/constants/pictures.dart';
import 'package:cookpad/src/view/Home_views/review_View/review_Widget/reviewWidget.dart';
//import 'package:cookpad/src/view/Home_views/home_view/review_View/review_Widget/reviewWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common_widgets/text-widget.dart';

//import '../../../../common_widgets/text-widget.dart';
//import '../../recipe_ingrident/recipeIngrident_Widget/ingrdntFirst_Row.dart';

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
        child: SingleChildScrollView(
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
              //SizedBox(height: 5,),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2,color:Colors.grey ),
                     // color: AppColors.cardclr,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      decoration:
                      InputDecoration(border: InputBorder.none,
                        hintText: '    Say Somthing...',
                        hintStyle: GoogleFonts.roboto(
                          color: AppColors.greyColor,fontSize: 11,
          
                        ),
          
                        //border: Border
                      ),
                    ),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15,right: 10),
                      child: Container(
                        width: 70,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.primaryColor),
                        child: Center(child: TextWidget(txt: 'Send',clr: Colors.white,)),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 25,),
          
          
                ReviewWidget(
                  path: Pic.grl,
                  txt: 'Bella Throne',txt1: 'June 12, 2020 - 19:35',
                txt2: 'Lorem Ipsum tempor incididunt ut labore et dolore,inise \nvoluptate velit esse cillum',
                txt3: '4',txt4: '5',),
          SizedBox(height: 10,),
              ReviewWidget(
                path: Pic.man,
                txt: 'Christopher Oshana',txt1: 'June 12, 2020 - 19:35',
                txt2: 'Lorem Ipsum tempor incididunt ut labore et dolore,inise \nvoluptate.',
                txt3: '4',txt4: '5',),
              SizedBox(height: 10,),
              ReviewWidget(
                path: Pic.men,
                txt: 'Kyle Austin',txt1: 'June 12, 2020 - 19:35',
                txt2: 'Lorem Ipsum tempor incididunt ut labore et dolore,inise voluptate.',
                txt3: '4',txt4: '5',),
              SizedBox(height: 10,),
              ReviewWidget(
                path: Pic.lip,
                txt: 'Jeniffern Wilson',txt1: 'June 12, 2020 - 19:35',
                txt2: 'Lorem Ipsum tempor incididunt ut labore et dolore,inise voluptate.',
                txt3: '4',txt4: '5',),
              SizedBox(height: 10,),
              ReviewWidget(
                path: Pic.lip,
                txt: 'Jeniffern Wilson',txt1: 'June 12, 2020 - 19:35',
                txt2: 'Lorem Ipsum tempor incididunt ut labore et dolore,inise voluptate.',
                txt3: '4',txt4: '5',),
          
            ],
          ),
        ),
      ),
    );
  }
}
