import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/constants/pictures.dart';
import 'package:cookpad/src/view/Home_views/profile_view/profile_widget/profileRow_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common_widgets/selected_button.dart';
import '../saved_recipe/savedrecipe_widget/saved_container.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  int check=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: TextWidget(txt: 'Profile',fntsze: 18.sp,fntwt: FontWeight.w600,),
      centerTitle: true,
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
                              child: Center(child: TextWidget(txt: 'Copy link',clr: Colors.white,)),
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
  padding: const EdgeInsets.symmetric(horizontal: 30,),
  child: SingleChildScrollView(
    child: Column(
      children: [
        ProfileRowWidget(),
        SizedBox(height: 20,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextWidget(txt: 'Afuwape Abiodun',fntwt: FontWeight.w600,fntsze: 16.sp,),
          ],
        ),
        //SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextWidget(txt: 'Chef',clr: AppColors.greyColor,fntwt: FontWeight.w400,fntsze: 11.sp,),
          ],
        ),
        SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextWidget(txt: 'Private Chef\nPassionate about food and life 🥘🍲🍝🍱',clr: AppColors.greyColor,fntwt: FontWeight.w400,fntsze: 11.sp,),
          ],
        ),
       // SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextWidget(txt:'More...',clr: AppColors.primaryColor,fntwt: FontWeight.w400,fntsze: 11.sp,),
          ],
        ),
    SizedBox(height: 15,),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SelectedButton(text: 'Recipe', ontap: (){
            setState(() {
              check=1;
            });
          },
              check: check,
              check2: 1, hght: 33.sp, wdth: 100.sp
          ),
          //SizedBox(width: 5,),
          SelectedButton(text: 'Videos', ontap: (){
            setState(() {
              check=2;
            });
          },
              check: check,
              check2: 2, hght: 33.sp, wdth: 100.sp
          ),
          SelectedButton(text: 'Tag', ontap: (){
            setState(() {
              check=3;
            });
          },
              check: check,
              check2: 3, hght: 33.sp, wdth: 100.sp
          ),
        ],
      ),
    ),
        SizedBox(height: 10,),
        SavedContainer(path: Pic.burgr,txt:'Traditional spare \nribs baked' ,hght: 50,
        txt1: 'By Chef John',),
        SizedBox(height: 10,),
        SavedContainer(path: Pic.burgr,txt:'spice roasted chicken \nwith flavored rice' ,hght: 50,
          txt1: 'By Mark Kelvin',),
    
    ]
    ),
  ),
    )
    );
  }
}
