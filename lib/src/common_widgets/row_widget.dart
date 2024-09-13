
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RowWidget extends StatelessWidget {
  String txt;
  double? fntsze;
   RowWidget({super.key,required this.txt,this.fntsze});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment:CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(txt,style: GoogleFonts.roboto(fontSize: 16),)
      ],
    );
  }
}
