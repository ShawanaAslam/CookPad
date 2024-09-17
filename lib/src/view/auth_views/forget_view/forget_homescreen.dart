import 'package:cookpad/src/common_widgets/mybutton_widget.dart';
import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/view/auth_views/login_view/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class ForgetHome extends StatelessWidget {
  ForgetHome({super.key});
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Email send successfuly, please check your email',style: GoogleFonts.roboto(),),
              SizedBox(height: 20,),
              // isloading
              //     ? CircularProgressIndicator(
              //   color: Colors.white,
              // )
              //
                  // : InkwellWidget(
                  // clr: Colors.blue.shade100,
                  // txt: 'Login',
                  // ontap: () {
                  //   Navigator.pushReplacement(context,CupertinoPageRoute(builder:(context)=>SigninScreen()));
                  // })
              MyButton(
                  width:double.infinity,
                  txt: 'Okay',clr: AppColors.primaryColor, ontap: (){
                Get.to(()=>LoginView());
              })
            ],
          ),
        ),
      ),

    );
  }
}
