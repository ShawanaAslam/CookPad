
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  String txt;
  final double? fntsze;
  final FontWeight? fntwt;
  Color? clr;

  TextWidget({super.key,required this.txt,this.fntsze,this.fntwt,this.clr});

  @override
  Widget build(BuildContext context) {
    return Text(txt,style: GoogleFonts.roboto(
      color:clr,
      fontWeight: fntwt,
      fontSize:fntsze
    ),);
  }
}
