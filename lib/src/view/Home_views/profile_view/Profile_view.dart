import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/constants/pictures.dart';
import 'package:cookpad/src/view/Home_views/profile_view/profile_widget/profileRow_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/selected_button.dart';
import '../saved_recipe/savedrecipe_widget/saved_container.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  int check=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: TextWidget(txt: 'Profile',fntsze: 18.sp,fntwt: FontWeight.w600,),
      centerTitle: true,),
body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 30,),
  child: SingleChildScrollView(
    child: Column(
      children: [
        ProfileRowWidget(),
        SizedBox(height: 20,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextWidget(txt: 'Afuwape Abiodun',fntwt: FontWeight.w600,fntsze: 16.sp,),
          ],
        ),
        //SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextWidget(txt: 'Chef',clr: AppColors.greyColor,fntwt: FontWeight.w400,fntsze: 11.sp,),
          ],
        ),
        SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextWidget(txt: 'Private Chef\nPassionate about food and life 🥘🍲🍝🍱',clr: AppColors.greyColor,fntwt: FontWeight.w400,fntsze: 11.sp,),
          ],
        ),
       // SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextWidget(txt:'More...',clr: AppColors.primaryColor,fntwt: FontWeight.w400,fntsze: 11.sp,),
          ],
        ),
    SizedBox(height: 15,),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SelectedButton(text: 'Recipe', ontap: (){
            setState(() {
              check=1;
            });
          },
              check: check,
              check2: 1, hght: 33.sp, wdth: 100.sp
          ),
          //SizedBox(width: 5,),
          SelectedButton(text: 'Videos', ontap: (){
            setState(() {
              check=2;
            });
          },
              check: check,
              check2: 2, hght: 33.sp, wdth: 100.sp
          ),
          SelectedButton(text: 'Tag', ontap: (){
            setState(() {
              check=3;
            });
          },
              check: check,
              check2: 3, hght: 33.sp, wdth: 100.sp
          ),
        ],
      ),
    ),
        SizedBox(height: 10,),
        SavedContainer(path: Pic.burgr,txt:'Traditional spare \nribs baked' ,hght: 50,
        txt1: 'By Chef John',),
        SizedBox(height: 10,),
        SavedContainer(path: Pic.burgr,txt:'spice roasted chicken \nwith flavored rice' ,hght: 50,
          txt1: 'By Mark Kelvin',),
    
    ]
    ),
  ),
    )
    );
  }
}
