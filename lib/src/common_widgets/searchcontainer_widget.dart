import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/constants/pictures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchContainer extends StatelessWidget {
  String txt;
  String txt1;
  double? fntsze;
  String path;

   SearchContainer({super.key,required this.txt,required this.txt1,
     this.fntsze,required this.path});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ Container(
        height: 150.sp,
        width: 160.sp,

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
          image: DecorationImage(
            image: AssetImage(path)
          )

        ),
      ),
        Container(
          width: 160.sp,
          height: 150.sp,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.01), // Adjust opacity as needed
                Colors.black, // Adjust as needed
              ],
            ),
          ),

       child:   Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 10
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton(

                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(37, 16)),
                      onPressed: (){}, child:
                  Row(children: [
                    Icon(Icons.star,color: AppColors.orangeColor,size: 15,),
                    SizedBox(width: 5,),
                    Text('4.0',style: GoogleFonts.roboto(fontSize: 8.sp),)
                  ],
                  )),
                ],
              ),
              SizedBox(height: 33,),
              Text(txt,style: GoogleFonts.poppins(fontSize: 11.sp,color: Colors.white,fontWeight: FontWeight.w600),),
              SizedBox(height: 5,),
              Text(txt1,style: GoogleFonts.poppins(fontSize: 9.sp,color: AppColors.greyColor,fontWeight: FontWeight.w400),),
            ],
          ),
        ),
    )
    ]
    );
  }
}
