import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/pictures.dart';

class SearchRow extends StatelessWidget {
  const SearchRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(flex: 70,
        child:
        Container(
          height: 40.h,
          width: 255.w,
          child: TextFormField(

            // controller: searchController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey, // Border color here
                    width: 2.0, // Border width
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: "Search recipe",
                hintStyle: GoogleFonts.roboto(fontSize: 12.sp,color: Colors.grey),
                prefixIcon: Icon(Icons.search_rounded,color: Colors.grey,size: 20,),


              )
          ),
        ),),
      SizedBox(width: 10,),
      Container(
        height:40.sp ,
        width: 40.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primaryColor,
        ),
        child: Image.asset(Pic.filter),
      )

    ]
    );
  }
}
