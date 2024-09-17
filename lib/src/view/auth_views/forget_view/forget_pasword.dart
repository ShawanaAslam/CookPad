


import 'package:cookpad/src/common_widgets/mybutton_widget.dart';
import 'package:cookpad/src/common_widgets/row_widget.dart';
import 'package:cookpad/src/common_widgets/textformfield_widget.dart';
import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/view/auth_views/forget_view/forget_homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class ForgetPasword extends StatefulWidget {
  ForgetPasword({super.key});

  @override
  State<ForgetPasword> createState() => _ForgetPaswordState();
}

class _ForgetPaswordState extends State<ForgetPasword> {
  TextEditingController forgetPaswordController=TextEditingController();

  bool isloading=false;

  // forget()async
  // {
  //   try {
  //     await FirebaseAuth.instance.sendPasswordResetEmail(
  //         email: forgetPaswordController.text.trim());
  //     Navigator.push(context,CupertinoPageRoute(builder:(context)=>ForgetHome()));
  //     //  confirmToastMessage(
  //     //    BuildContext, context, 'You are Successfully changed Pasword');
  //   }
  //   catch (error) {
  //     setState(() {
  //       isloading = false;
  //     });
  //     errorToastMessage(BuildContext, context, error.toString());
  //   }
  //   finally {
  //     setState(() {
  //       isloading = false;
  //     });
  //     //Navigator.pop(context);
  //
  //   }
  //
  // }
TextEditingController n1=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           RowWidget(txt:'Enter Email For Forget Pasword' ),
            SizedBox(height: 5,),
            MyTextformfield(controller:n1 , hnttxt:'Enter Email For Forget Pasword'),
            SizedBox(height: 40,),
           // isloading? CircularProgressIndicator():
           // InkwellWidget(txt: 'Forget Pasword',clr:Colors.blue.shade100 , ontap:
            //forget
          //  )
            MyButton(
                width:double.infinity,
                icn: Icons.arrow_forward_rounded,
                txt: 'Forget Pasword',clr: AppColors.primaryColor, ontap: (){
              Get.to(()=>ForgetHome());
            })
          ],
        ),
      ) ,
    );
  }
}
