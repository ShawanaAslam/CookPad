

import 'package:cookpad/src/common_widgets/mybutton_widget.dart';
import 'package:cookpad/src/common_widgets/row_widget.dart';
import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:cookpad/src/common_widgets/textformfield_widget.dart';
import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/view/Starting_views/splash_view/splash_view.dart';
import 'package:cookpad/src/view/auth_views/login_view/login_widgets/floating_row.dart';
import 'package:cookpad/src/view/auth_views/login_view/login_widgets/forget_rowWidget.dart';
import 'package:cookpad/src/view/auth_views/login_view/login_widgets/textform.dart';
import 'package:cookpad/src/view/auth_views/signup_view/signup_widgets/check_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../common_widgets/Inkwell-row.dart';
import '../login_view/login_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController emailController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
        body:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, ),
          child:
          SingleChildScrollView(
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
                TextWidget(txt: "Create an account,",fntsze: 20,),
            
                SizedBox(height: 5,),
                TextWidget(txt: 'Let’s help you set up your account,\n it won’t take long.',fntsze: 11,fntwt: FontWeight.w400,),
            
                SizedBox(height: 20,),
                RowWidget(txt: 'Name'),
                SizedBox(height: 3,),
                MyTextformfield(controller: emailController, hnttxt: 'Enter Name'),
                SizedBox(height: 5,),
                RowWidget(txt: 'Email'),
                SizedBox(height: 3,),
                MyTextformfield(controller: emailController, hnttxt: 'Enter Email'),
                SizedBox(height: 5,),
                RowWidget(txt: 'Pasword'),
                SizedBox(height: 3,),
                MyTextformfield(controller: emailController, hnttxt: 'Enter Pasword'),
                SizedBox(height: 5,),
                RowWidget(txt: ' Confirm Pasword'),
                SizedBox(height: 3,),
                MyTextformfield(controller: emailController, hnttxt: 'Retype Pasword'),
                SizedBox(height: 5,),
                CheckRow(),
                SizedBox(height: 20,),
                MyButton(
                    width:double.infinity,
                    icn: Icons.arrow_forward_rounded,txt: 'Sign up', clr:AppColors.primaryColor,
                    ontap: ()
                    {
                    }),
                SizedBox(height: 10,),
                Center(child: TextWidget(txt: '--------- or Sign in With --------',fntsze: 11.sp,clr: Colors.grey,)),
                SizedBox(height: 10,),
                FloatingRow(),
                SizedBox(height: 15,),
                InkwellRow(
                  txt: 'Already a member?',txt1: 'Sign in',
                  ontap: (){
                    Navigator.push(context,CupertinoPageRoute(builder:(context)=>LoginView()));
                  },
                )
            
            
              ],
            ),
          ),
        )
    );
  }
}

