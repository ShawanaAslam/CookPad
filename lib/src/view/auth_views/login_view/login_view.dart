import 'package:cookpad/src/common_widgets/Divider_widget.dart';
import 'package:cookpad/src/common_widgets/Inkwell-row.dart';
import 'package:cookpad/src/common_widgets/mybutton_widget.dart';
import 'package:cookpad/src/common_widgets/row_widget.dart';
import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:cookpad/src/common_widgets/textformfield_widget.dart';
import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/view/Home_views/BottomNavigationBar/bottomBar_View.dart';
import 'package:cookpad/src/view/Starting_views/splash_view/splash_view.dart';
import 'package:cookpad/src/view/auth_views/login_view/login_widgets/forget_rowWidget.dart';
import 'package:cookpad/src/view/auth_views/login_view/login_widgets/textform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../signup_view/signup_view.dart';
import 'login_widgets/floating_row.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController pswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
      child: SingleChildScrollView(
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              txt: "Hello,",
              fntsze: 30,
            ),
            SizedBox(
              height: 3,
            ),
            TextWidget(
              txt: 'Welcome Back!',
              fntsze: 20,
              fntwt: FontWeight.w400,
            ),
            SizedBox(
              height: 30,
            ),
            RowWidget(txt: 'Email'),
            SizedBox(
              height: 3,
            ),
            MyTextformfield(controller: emailController, hnttxt: 'Enter Email'),
            SizedBox(
              height: 20,
            ),
            RowWidget(txt: 'Enter Pasword'),
            SizedBox(
              height: 3,
            ),
            MyTextformfield(
                controller: pswordController, hnttxt: 'Enter Posword'),
            SizedBox(
              height: 10,
            ),
            ForgetRowwidget(),
            SizedBox(
              height: 20,
            ),
            MyButton(
              width: double.infinity,
                icn: Icons.arrow_forward_rounded,
                txt: 'Sign in',
                clr: AppColors.primaryColor,
                ontap: () {
                  Get.to(() => BottomBar());
                }),
            SizedBox(
              height: 10,
            ),

         DividerWidget(),
            SizedBox(
              height: 15,
            ),
            FloatingRow(),
            SizedBox(
              height: 30,
            ),
            InkwellRow(txt: "Don't have an account?",txt1: 'Sign Up',
ontap:(){ Navigator.push(context,CupertinoPageRoute(builder:(context)=>SignUpView()));} ,
            )
          ],
        ),
      ),
    ));
  }
}
