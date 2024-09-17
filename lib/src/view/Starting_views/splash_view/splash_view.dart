
import 'dart:math';
import 'dart:ui';

import 'package:cookpad/src/common_widgets/mybutton_widget.dart';
import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:cookpad/src/view/auth_views/login_view/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/pictures.dart';
//import '../../../controller/constant/images/images.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),()  {
      Get.to(()=>LoginView());
    //  isUserlogin();
    });
  }
  // isUserlogin()
  // {
  //   User? user=FirebaseAuth.instance.currentUser;
  //   if(user==null)
  //   {
  //     Navigator.pushReplacement(context,CupertinoPageRoute(builder:(context)=>RegistrationScreen()));
  //   }
  //   else
  //   {
  //     Navigator.pushReplacement(context,CupertinoPageRoute(builder:(context)=>));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body: Stack(
       children:[ Container(
         height: double.infinity,
       width: double.infinity,
       decoration:BoxDecoration(
          image:DecorationImage(
           image: AssetImage(Pic.sp),
        fit: BoxFit
            .cover, // Cover the entire screen
           ),
       ),

       ),
         Container(
           width: double.infinity,
           height: double.infinity,
           decoration: BoxDecoration(
             gradient: LinearGradient(
               begin: Alignment.topCenter,
               end: Alignment.bottomCenter,
               colors: [
                 Colors.black.withOpacity(0.3), // Adjust opacity as needed
                 Colors.black, // Adjust as needed
               ],
             ),
           ),
         ),
         Center(
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 30),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,

               children: [
                 Image.asset(
                   Pic.spIcon,
                   width: 79,
                   height: 79,
                 ),
                 SizedBox(height: 10,),
                TextWidget(clr: Colors.white,txt:'100K+ Premium Recipe',fntsze: 16,fntwt: FontWeight.w600,),
                 SizedBox(height: 120,),
                 TextWidget(clr: Colors.white,txt:'    Get\nCooking',fntsze: 50,fntwt: FontWeight.w600,),
                 SizedBox(height: 10,),
                 TextWidget(clr: Colors.white,txt:'Simple way to find Tasty Recipe',fntsze: 16,fntwt: FontWeight.w400,),
                 SizedBox(height: 60,),
                 MyButton(

                     width:double.infinity,
                     icn: Icons.arrow_forward_rounded,txt:'Start Cooking',clr: Colors.teal, ontap: (){}),


               ],
             ),
           ),
         )

      ]
     ),
    );
  }
}
