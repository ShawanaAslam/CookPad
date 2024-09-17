import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  VoidCallback? ontap;
  String txt;
  Color clr;
  MyButton({super.key, required this.txt, this.ontap, this.clr = Colors.white});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ontap ?? null,
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              color: clr, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  txt,
                  style: GoogleFonts.roboto(fontSize: 20, color: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_rounded,
                  size: 20,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ));
  }
}
