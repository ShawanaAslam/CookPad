import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/constants/pictures.dart';
import 'package:cookpad/src/view/Home_views/recipe_ingrident/recipeIngrident_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../common_widgets/row_widget.dart';
import '../../search_view/search_view.dart';

class HomeWidgetOne extends StatelessWidget {
  String txt;
  String txt1;
  String path;
  // String pathh;
  HomeWidgetOne({
    super.key,
    required this.path,
    required this.txt,
    required this.txt1,
    //required this.pathh
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 241,
        width: 150,
        // color: Colors.amber,
        child: Stack(alignment: Alignment.topCenter, children: [
          Padding(
            padding: EdgeInsets.only(top: 45.0),
            child: Container(
              height: 176,
              width: 150,
              // double.infinity,
              decoration: BoxDecoration(
                color: AppColors.cardclr,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: 10.0, top: 70),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      txt: txt,
                      fntsze: 14.sp,
                      fntwt: FontWeight.w600,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Text(
                                    'Time',
                                    style: TextStyle(
                                        color: AppColors.greyColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11),
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(txt1,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11))
                            ],
                          ),
                          CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(
                                  Pic.icn,
                                )),

                            // backgroundImage: AssetImage(),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.amber,
            radius: 45,
            backgroundImage: AssetImage(path),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                      height: 22.sp,
                      width: 46.sp,
                      decoration: BoxDecoration(
                          color: AppColors.lightOrangeColor,
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: AppColors.orangeColor,
                            size: 14,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            '4.0',
                            style: GoogleFonts.roboto(fontSize: 8.sp),
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
        ]));
  }
}
