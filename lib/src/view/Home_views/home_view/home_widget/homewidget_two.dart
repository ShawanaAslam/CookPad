import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:cookpad/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/pictures.dart';

class HomeWidgetTwo extends StatelessWidget {
  String txt;
  String path;
  String path1;
   HomeWidgetTwo({super.key,
   required this.txt,required this.path,required this.path1});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 127.sp,
      width: 251.sp,
      // color: Colors.red,
      child: Stack(
        children: [
          Padding(
            padding:
            const EdgeInsets.only(
                top: 20.0,
                //left: 12, right: 12
            ),
            child: Container(
              height: 95.sp,

              width: 251.sp,
              child: Card(
                shadowColor: Colors.black87,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 15.0,
                    top: 15,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text( 'Steak with tomato...',style: TextStyle(
                          fontSize: 14,fontWeight: FontWeight.w600),),

                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 13,
                            backgroundImage: AssetImage(path1),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(txt,style: TextStyle(color:AppColors.greyColor,fontSize: 11))
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 30,
backgroundImage: AssetImage(path),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                      right: 10
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image(image: AssetImage(Pic.timer)),
                      SizedBox(width: 10,),
                      Text('20 mnt',style: TextStyle(color:AppColors.greyColor,fontSize: 11),),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
