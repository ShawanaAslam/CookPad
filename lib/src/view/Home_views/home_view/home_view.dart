import 'package:cookpad/src/common_widgets/searchRow.dart';
import 'package:cookpad/src/common_widgets/selected_button.dart';
import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:cookpad/src/constants/colors.dart';
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
        child: Column(
          children: [
           SmallContainerWidget(),
            SizedBox(height: 30),
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
            )

          ],
        ),
      ),
    );
  }
}
