
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/colors.dart';

class CheckRow extends StatefulWidget {

  const CheckRow({super.key});

  @override
  State<CheckRow> createState() => _CheckRowState();
}

class _CheckRowState extends State<CheckRow> {

  bool isChecked=true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        InkWell(
            onTap: (){
            //  Navigator.push(context,CupertinoPageRoute(builder:(context)=>ForgetPasword()));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                children: [
                  Checkbox(value: isChecked,


            fillColor: MaterialStateProperty.all(Colors.white),
                checkColor: AppColors.orangeColor,
                      onChanged: ( value){
                    setState(() {
                      isChecked= value!;
                    });
                      }),
                  Text('Accept terms & Condition',style: GoogleFonts.roboto(
                      fontSize:13.sp,color: AppColors.orangeColor),),
                ],
              ),
            ))
      ],

    );
  }
}
