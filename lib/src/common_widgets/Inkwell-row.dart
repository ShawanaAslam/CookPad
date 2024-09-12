import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class InkwellRow extends StatelessWidget {
  const InkwellRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Text("Don't have an account?",style: GoogleFonts.roboto(),),
          SizedBox(width: 5,),
          InkWell(
              onTap: (){
                //Navigator.push(context,CupertinoPageRoute(builder:(context)=>ForgetPasword()));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Text('Sign up',style: GoogleFonts.roboto(color: AppColors.orangeColor),),
              ))
        ],
      ),
    );
  }
}
