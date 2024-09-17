import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  VoidCallback? ontap;
  String txt;
  Color clr;
  double width;
  IconData? icn;
  MyButton({super.key, required this.txt, this.ontap, this.clr = Colors.white,
  required this.width,this.icn});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ontap ?? null,
        child: Container(
          height: 50,
          width: width,
          decoration: BoxDecoration(
              color: clr, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: Text(
                    txt,
                    style: GoogleFonts.roboto(fontSize: 20, color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  icn??null,
                  //Icons.arrow_forward_rounded,
                  size: 20,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ));
  }
}
