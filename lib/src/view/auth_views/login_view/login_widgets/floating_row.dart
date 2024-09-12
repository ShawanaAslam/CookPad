import 'package:cookpad/src/constants/pictures.dart';
import 'package:flutter/material.dart';

class FloatingRow extends StatelessWidget {
  const FloatingRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FloatingActionButton(
          onPressed: ()
          {

          },
          backgroundColor: Colors.white,
         child: Image.asset(
           Pic.google,
           height: 24,
           width: 24,
         ),
        ),
        SizedBox(width: 30,),
        FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: ()
          {

          },
          child: Image.asset(
              Pic.fb,
            height: 24,
            width: 24,

          ),
        ),
      ],
    );
  }
}
