import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ButtonWidget extends StatelessWidget {
  String txt;
   ButtonWidget({super.key,required this.txt});

  @override
  Widget build(BuildContext context) {
    return Column(
mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      Padding(
        padding: const EdgeInsets.all(100.0),
        child: Text(txt,style: GoogleFonts.abhayaLibre(color: Colors.black
          ,fontSize: 22,fontWeight: FontWeight.w800),),
      ),

]
    );
  }
}
