import 'package:cookpad/src/common_widgets/searchRow.dart';
import 'package:cookpad/src/common_widgets/selected_button.dart';
import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/constants/pictures.dart';
import 'package:cookpad/src/view/Home_views/home_view/home_widget/homewidget_one.dart';
import 'package:cookpad/src/view/Home_views/home_view/home_widget/homewidget_two.dart';
import 'package:cookpad/src/view/Home_views/home_view/home_widget/smallContainer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int check=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
             SmallContainerWidget( btm:0,hgt: 40.sp,wdth: 40.sp,
               txt: 'Hello Fola',txt1: "What are you cooking today?",path: Pic.child,),
              SizedBox(height: 10),
              SearchRow(),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SelectedButton(text: 'All', ontap: (){
                    setState(() {
                      check=1;
                    });
                  },
                      check: check,
                      check2: 1, hght: 31.sp, wdth: 54.sp
                  ),
                  //SizedBox(width: 5,),
                  SelectedButton(text: 'Indian', ontap: (){
                    setState(() {
                      check=2;
                    });
                  },
                      check: check,
                      check2: 2, hght: 31.sp, wdth: 76.sp
                  ),
                  SelectedButton(text: 'Asian', ontap: (){
                    setState(() {
                      check=3;
                    });
                  },
                      check: check,
                      check2: 3, hght: 31.sp, wdth: 76.sp
                  ),
                  SelectedButton(text: 'China', ontap: (){
                    setState(() {
                      check=4;
                    });
                  },
                      check: check,
                      check2: 4, hght: 31.sp, wdth: 76.sp
                  ),
                ],
              ),
              SizedBox(height: 15,),
              SingleChildScrollView(
          scrollDirection: Axis.horizontal,
                child: Row(children: [
                  HomeWidgetOne(txt:'Classic Greek \n        Salad',txt1: '15 Mins',path: Pic.rice,),
                  SizedBox(width: 10,),
                  HomeWidgetOne(txt:'Crunchy Nut \n  Coleslaw',txt1: '10 Mins',path: Pic.bowl,),
                  SizedBox(width: 10,),
                  HomeWidgetOne(txt:'Classic Greek \n        Salad',txt1: '30 Mins',path: Pic.burgr,)
                ],),
              ),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(txt: 'New Recipes',fntsze: 16.sp,fntwt: FontWeight.w600,),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                 // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    HomeWidgetTwo(txt: 'By James Milner',path: Pic.burgr,path1: Pic.boy,),
                    HomeWidgetTwo(txt: 'By Laura',path: Pic.nodles,path1: Pic.boy,),
                  ],
                ),
              )
              
          
            ],
          ),
        ),
      ),
    );
  }
}
