import 'package:cookpad/src/common_widgets/selected_button.dart';
import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/constants/pictures.dart';
import 'package:cookpad/src/view/Home_views/recipe_ingrident/recipeIngrident_Widget/ingridentCircl_Row.dart';
import 'package:cookpad/src/view/Home_views/recipe_ingrident/recipeIngrident_Widget/ingridentIcon_Row.dart';
import 'package:cookpad/src/view/Home_views/recipe_ingrident/recipeIngrident_Widget/ingrident_card.dart';
import 'package:cookpad/src/view/Home_views/saved_recipe/savedrecipe_widget/saved_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'recipeIngrident_Widget/ingrdntFirst_Row.dart';

class RecipeIngridentView extends StatefulWidget {
  const RecipeIngridentView({super.key});

  @override
  State<RecipeIngridentView> createState() => _RecipeIngridentViewState();
}

class _RecipeIngridentViewState extends State<RecipeIngridentView> {
  int check = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          PopupMenuButton(
            color: Colors.white,
            icon: Icon(Icons.more_horiz),
            onSelected: (String value) {
              if (value == 'share') {
                Get.defaultDialog(
                    title: 'Recipe Link',
                    titlePadding: EdgeInsets.only(right: 150, top: 15),
                    titleStyle: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600, fontSize: 20.sp),
                    // titlePadding: Padding(padding: ),
                    contentPadding: EdgeInsets.only(left: 15, right: 15),
                    content: Column(children: [
                      Text(
                          'Copy recipe link and share your recipe link with friends and family.'),
                      SizedBox(
                        height: 10,
                      ),
                      //Row(
                      //children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.cardclr,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextFormField(
                              decoration:
                                  InputDecoration(border: InputBorder.none
                                      //border: Border
                                      ),
                            ),
                          ),
                          InkWell(
                            child: Container(
                              width: 100,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.primaryColor),
                              child: Text(''),
                            ),
                          )
                        ],
                      ),

                      // ],
                      // ),
                    ]));
              }
              if (value == 'Rate Recipe') {
                Get.defaultDialog(
                    title: 'Rate Recipe',
                    titleStyle: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600, fontSize: 20.sp),
                    // titlePadding: Padding(padding: ),
                    content: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star_border,
                          color: AppColors.orangeColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.star_border,
                          color: AppColors.orangeColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.star_border,
                          color: AppColors.orangeColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.star_border,
                          color: AppColors.orangeColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.star_border,
                          color: AppColors.orangeColor,
                        ),
                      ],
                    ),
                    actions: [
                      Container(
                        height: 20,
                        width: 61,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: AppColors.cardclr),
                        child: Center(
                            child: TextWidget(
                          txt: 'Send',
                          clr: Colors.white,
                          fntsze: 8.sp,
                          fntwt: FontWeight.w400,
                        )),
                      )
                    ]);
              }
              if (value == 'Review') {
              } else if (value == 'Unsave') {}
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: 'share',
                  child: Column(children: [
                    Row(children: [
                      Image.asset(Pic.share),
                      SizedBox(
                        width: 20,
                      ),
                      TextWidget(
                        txt: 'Share',
                        fntsze: 14,
                      ),
                    ])
                  ]),
                ),
                PopupMenuItem(
                  value: 'Rate Recipe',
                  child: Column(children: [
                    Row(children: [
                      Icon(Icons.star),
                      SizedBox(
                        width: 16,
                      ),
                      TextWidget(
                        txt: 'Rate Recipe',
                        fntsze: 14,
                      ),
                    ])
                  ]),
                ),
                PopupMenuItem(
                  value: 'Review',
                  child: Column(children: [
                    Row(children: [
                      Image.asset(Pic.msg),
                      SizedBox(
                        width: 20,
                      ),
                      TextWidget(
                        txt: 'Review',
                        fntsze: 14,
                      ),
                    ])
                  ]),
                ),
                PopupMenuItem(
                    value: 'Unsave',
                    child: Column(children: [
                      Row(children: [
                        Image.asset(Pic.pop),
                        SizedBox(
                          width: 20,
                        ),
                        //  Icon(Icons.add),
                        TextWidget(
                          txt: 'Unsave',
                          fntsze: 14,
                        ),
                      ])
                    ])),
                //),
              ];
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SavedContainer(
                path: Pic.burgr,
                hght: 65,
              ),
              SizedBox(
                height: 5,
              ),
              IngrdntFirstRow(
                txt: 'Spicy chicken burger with \nFrench fries',
                txt1: '(13K Reviews)',
              ),
              SizedBox(
                height: 10,
              ),
              IngridentCirclRow(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SelectedButton(
                    text: "Ingrident",
                    hght: 33.sp,
                    wdth: 135.sp,
                    ontap: () {
                      check = 1;
                      setState(() {});
                    },
                    check: check,
                    check2: 1,
                  ),
                  SelectedButton(
                    text: "Procedure",
                    hght: 33.sp,
                    wdth: 135.sp,
                    ontap: () {
                      check = 2;
                      setState(() {});
                    },
                    check: check,
                    check2: 2,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              IngridentIconRow(),
              SizedBox(
                height: 10,
              ),
              IngridentCard(
                txt: 'Tomatos',
                txt2: '500g',
                path: Pic.tomato,
                wdt: 120,
              ),
              SizedBox(
                height: 5,
              ),
              IngridentCard(
                txt: 'Cabbage',
                txt2: '300g',
                path: Pic.cabge,
                wdt: 120,
              ),
              SizedBox(
                height: 5,
              ),
              IngridentCard(
                txt: 'Taco',
                txt2: '300g',
                path: Pic.taco,
                wdt: 150,
              ),
              SizedBox(
                height: 5,
              ),
              IngridentCard(
                txt: 'Slice Bread',
                txt2: '300g',
                path: Pic.slice,
                wdt: 105,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
