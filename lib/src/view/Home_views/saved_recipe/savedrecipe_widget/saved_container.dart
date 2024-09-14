import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/constants/pictures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SavedContainer extends StatelessWidget {
  String txt;
  String txt1;
  double? fntsze;
  String path;
  //double? hght;
  //double? wdth;
 // String? txt2;
  //IconData? icon;


  SavedContainer({super.key, required this.txt, required this.txt1,
    this.fntsze,required this.path,
    //this.hght,this.wdth,
    //this.txt2,
   // this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
        children:[ Container(
          height: 150.sp,
          width: 315.sp,

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),

              image: DecorationImage(
                  image: AssetImage(path,),fit: BoxFit.fill
              )

          ),
        ),
          Container(
            width: 315.sp,
            height: 150.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
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
                //  vertical: ,
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
                  SizedBox(height: 25,),
                  Text(txt,style: GoogleFonts.poppins(fontSize: 11.sp,color: Colors.white,fontWeight: FontWeight.w600),),
                  //SizedBox(height: 5,),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                  Text(txt1,style: GoogleFonts.poppins(fontSize: 9.sp,color: AppColors.greyColor,fontWeight: FontWeight.w400),),
                  Container(
                    child: Row(
                      children: [
                        Image(image: AssetImage(Pic.timer)),
                        SizedBox(width: 10,),
                       Text('20 mnt',style: GoogleFonts.roboto(color: Colors.white,fontSize: 11.sp),),
                        SizedBox(width: 10,),
                        CircleAvatar(
                          radius: 15,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage(Pic.icn,),
                          ),
                        )
                      ],
                    ),
                  )
                  ],
                   ),
                ],
              ),
            ),
          )
        ]
    );
  }
}
