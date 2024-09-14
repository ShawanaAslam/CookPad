import 'package:cookpad/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectedButton extends StatelessWidget {
  int check;
  VoidCallback ontap;
  String text;
  int check2;
  double hght;
  double wdth;

  SelectedButton({super.key,required this.text,required this.ontap,
  required this.check,required this.check2,required this.hght,required this.wdth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.all(5),
        height: hght,
        width: wdth,
        decoration: BoxDecoration(
          color: check==check2?AppColors.primaryColor :Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(text,style: GoogleFonts.roboto(
              color: check== check2?Colors.white:AppColors.primaryColor),),
        ),
      ),
    );
  }
}
