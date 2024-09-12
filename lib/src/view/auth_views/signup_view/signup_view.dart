

import 'package:cookpad/src/common_widgets/mybutton_widget.dart';
import 'package:cookpad/src/common_widgets/row_widget.dart';
import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:cookpad/src/common_widgets/textformfield_widget.dart';
import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/view/Starting_views/splash_view/splash_view.dart';
import 'package:cookpad/src/view/auth_views/login_view/login_widgets/floating_row.dart';
import 'package:cookpad/src/view/auth_views/login_view/login_widgets/forget_rowWidget.dart';
import 'package:cookpad/src/view/auth_views/login_view/login_widgets/textform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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
        body:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child:
          Column(
            //  mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              TextWidget(txt: "Hello,",fntsze: 30,),

              SizedBox(height: 10,),
              TextWidget(txt: 'Welcome Back!',fntsze: 20,fntwt: FontWeight.w400,),

              SizedBox(height: 40,),
              RowWidget(txt: 'Email'),
              SizedBox(height: 3,),
              MyTextformfield(controller: emailController, hnttxt: 'Enter Email'),
              SizedBox(height: 30,),
              RowWidget(txt: 'Enter Pasword'),
              SizedBox(height: 3,),
              MyTextformfield(controller: emailController, hnttxt: 'Enter Posword'),
              SizedBox(height: 20,),
              ForgetRowwidget(),
              SizedBox(height: 20,),
              MyButton(txt: 'Sign in', clr:AppColors.primaryColor,
                  ontap: ()
                  {
                  }),
              SizedBox(height: 20,),


            ],
          ),
        )
    );
  }
}

