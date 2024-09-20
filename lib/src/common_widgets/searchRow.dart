// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../constants/colors.dart';
// import '../constants/pictures.dart';

// // class SearchRow extends StatelessWidget {
// //   const SearchRow({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Row(children: [
// //       Expanded(flex: 70,
// //         child:
// //         Container(
// //           height: 40.h,
// //           width: 255.w,
// //           child: TextFormField(

// //             // controller: searchController,
// //               decoration: InputDecoration(
// //                 border: OutlineInputBorder(
// //                   borderSide: BorderSide(
// //                     color: AppColors.greyColor, // Border color here
// //                     width: 2.0, // Border width
// //                   ),
// //                   borderRadius: BorderRadius.circular(5),
// //                 ),
// //                 hintText: "Search recipe",
// //                 hintStyle: GoogleFonts.roboto(fontSize: 12.sp,color: Colors.grey),
// //                 prefixIcon: Icon(Icons.search_rounded,color: Colors.grey,size: 20,),

// //               )
// //           ),
// //         ),),
// //       SizedBox(width: 10,),
// //       InkWell(

// //         child: Container(
// //           height:40.sp ,
// //           width: 40.sp,
// //           decoration: BoxDecoration(
// //             borderRadius: BorderRadius.circular(10),
// //             color: AppColors.primaryColor,
// //           ),
// //           child: Image.asset(Pic.filter),
// //         ),
// //       )

// //     ]
// //     );
// //   }
// // }

// ///----------
// import 'package:cookpad/src/common_widgets/mybutton_widget.dart';
// import 'package:cookpad/src/common_widgets/text-widget.dart';
// import 'package:cookpad/src/view/Home_views/search_view/search_view.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../constants/colors.dart';
// import '../constants/pictures.dart';

// class SearchRow extends StatefulWidget {
//   const SearchRow({Key? key}) : super(key: key);

//   @override
//   _SearchRowState createState() => _SearchRowState();
// }

// class _SearchRowState extends State<SearchRow> {
//   // Track the selected buttons for each category in the parent state
//   int? selectedTime;
//   int? selectedRate;
//   int? selectedCategory;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           flex: 70,
//           child: Container(
//             height: 40.h,
//             width: 255.w,
//             child: TextFormField(
//               onTap: () {
//                 Get.to(() => SearchView());
//               },
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: AppColors.greyColor, // Border color here
//                     width: 2.0, // Border width
//                   ),
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//                 hintText: "Search recipe",
//                 hintStyle: GoogleFonts.roboto(
//                   fontSize: 12.sp,
//                   color: Colors.grey,
//                 ),
//                 prefixIcon: Icon(
//                   Icons.search_rounded,
//                   color: Colors.grey,
//                   size: 20,
//                 ),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(width: 10),
//         InkWell(
//           onTap: () {
//             _openFilterBottomSheet(context);
//           },
//           child: Container(
//             height: 40.sp,
//             width: 40.sp,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               color: AppColors.primaryColor,
//             ),
//             child: Image.asset(Pic.filter),
//           ),
//         ),
//       ],
//     );
//   }

//   // Method to open the bottom sheet
//   void _openFilterBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TextWidget(
//                     txt: 'Filter Search',
//                     fntsze: 18,
//                     fntwt: FontWeight.w600,
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),
//               // Time Filter
//               _buildCategory(
//                 context,
//                 "Time",
//                 ["All", "Newest", "Oldest", "Popularity"],
//                 selectedTime,
//                 (index) {
//                   setState(() {
//                     selectedTime = index;
//                   });
//                 },
//               ),
//               SizedBox(height: 20),
//               // Rate Filter
//               _buildCategoryStars(
//                 context,
//                 'Rate',
//                 ["5", "4", "3", "2", "1"],
//                 selectedRate,
//                 (index) {
//                   setState(() {
//                     selectedRate = index;
//                   });
//                 },
//               ),
//               SizedBox(height: 20),
//               // Category Filter
//               _buildCategory(
//                 context,
//                 "Category",
//                 ["Vegan", "Vegetarian", "Non-Veg", "Keto"],
//                 selectedCategory,
//                 (index) {
//                   setState(() {
//                     selectedCategory = index;
//                   });
//                 },
//               ),
//               SizedBox(height: 20),
//               Center(
//                 child: MyButton(
//                   width: 200,
//                   txt: 'Filter',
//                   clr: AppColors.primaryColor,
//                   ontap: () {
//                     // Apply filter and dismiss the bottom sheet
//                     Get.back();
//                   },
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   // Widget to build category filter section
//   Widget _buildCategory(BuildContext context, String title,
//       List<String> options, int? selectedIndex, Function(int) onTap) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: GoogleFonts.roboto(
//             fontSize: 16.sp,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(height: 10.h),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: List.generate(options.length, (index) {
//             bool isSelected = selectedIndex == index;
//             return GestureDetector(
//               onTap: () {
//                 onTap(index); // Update state on tap
//               },
//               child: Container(
//                 height: 40.h,
//                 width: 80.w,
//                 decoration: BoxDecoration(
//                   color:
//                       isSelected ? AppColors.primaryColor : Colors.transparent,
//                   border: Border.all(color: AppColors.primaryColor),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Center(
//                   child: Text(
//                     options[index],
//                     style: GoogleFonts.roboto(
//                       color: isSelected ? Colors.white : AppColors.primaryColor,
//                       fontSize: 14.sp,
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           }),
//         ),
//       ],
//     );
//   }

//   // Widget to build rate category with stars
//   Widget _buildCategoryStars(BuildContext context, String title,
//       List<String> options, int? selectedIndex, Function(int) onTap) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: GoogleFonts.roboto(
//             fontSize: 16.sp,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(height: 10.h),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: List.generate(options.length, (index) {
//             bool isSelected = selectedIndex == index;
//             return GestureDetector(
//               onTap: () {
//                 onTap(index); // Update state on tap
//               },
//               child: Container(
//                 height: 40.h,
//                 width: 60.w,
//                 decoration: BoxDecoration(
//                   color:
//                       isSelected ? AppColors.primaryColor : Colors.transparent,
//                   border: Border.all(color: AppColors.primaryColor),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Text(
//                       options[index],
//                       style: GoogleFonts.roboto(
//                         color:
//                             isSelected ? Colors.white : AppColors.primaryColor,
//                         fontSize: 14.sp,
//                       ),
//                     ),
//                     Icon(
//                       Icons.star,
//                       color: isSelected ? Colors.white : AppColors.primaryColor,
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           }),
//         ),
//       ],
//     );
//   }
// }

import 'package:cookpad/src/common_widgets/mybutton_widget.dart';
import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/constants/pictures.dart';
import 'package:cookpad/src/view/Home_views/search_view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchRow extends StatelessWidget {
  final FilterController filterController = Get.put(FilterController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 70,
          child: Container(
            height: 40.h,
            width: 255.w,
            child: TextFormField(
              onTap: () {
                Get.to(() => SearchView());
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.greyColor,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: "Search recipe",
                hintStyle: GoogleFonts.roboto(
                  fontSize: 12.sp,
                  color: Colors.grey,
                ),
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Colors.grey,
                  size: 20,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        InkWell(
          onTap: () {
            _openFilterBottomSheet(context);
          },
          child: Container(
            height: 40.sp,
            width: 40.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.primaryColor,
            ),
            child: Image.asset(Pic.filter),
          ),
        ),
      ],
    );
  }

  // Open the bottom sheet using GetX
  Widget _buildCategory(
      BuildContext context,
      String title,
      List<String> options,
      int selectedIndex,
      Function(int) onTap,
      RxInt selectedValue) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(options.length, (index) {
            return GestureDetector(
              onTap: () {
                onTap(index);
              },
              child: Obx(() {
                bool isSelected = selectedValue.value ==
                    index; // Correctly use the selectedValue for each filter type
                return Container(
                  height: 40.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.primaryColor
                        : Colors.transparent,
                    border: Border.all(color: AppColors.primaryColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      options[index],
                      style: GoogleFonts.roboto(
                        color:
                            isSelected ? Colors.white : AppColors.primaryColor,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                );
              }),
            );
          }),
        ),
      ],
    );
  }

  // Use for the stars category (rate)
  Widget _buildCategoryStars(
      BuildContext context,
      String title,
      List<String> options,
      int selectedIndex,
      Function(int) onTap,
      RxInt selectedValue) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(options.length, (index) {
            return GestureDetector(
              onTap: () {
                onTap(index);
              },
              child: Obx(() {
                bool isSelected = selectedValue.value ==
                    index; // Correctly use selectedValue for the stars
                return Container(
                  height: 40.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.primaryColor
                        : Colors.transparent,
                    border: Border.all(color: AppColors.primaryColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        options[index],
                        style: GoogleFonts.roboto(
                          color: isSelected
                              ? Colors.white
                              : AppColors.primaryColor,
                          fontSize: 14.sp,
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color:
                            isSelected ? Colors.white : AppColors.primaryColor,
                      ),
                    ],
                  ),
                );
              }),
            );
          }),
        ),
      ],
    );
  }

  // Open bottom sheet function
  void _openFilterBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(
                    txt: 'Filter Search',
                    fntsze: 18,
                    fntwt: FontWeight.w600,
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Time Filter
              _buildCategory(
                context,
                "Time",
                ["All", "Newest", "Oldest", "Popularity"],
                filterController.selectedTime.value,
                (index) {
                  filterController.updateTime(index);
                },
                filterController.selectedTime, // Passing the correct observable
              ),
              SizedBox(height: 20),
              // Rate Filter
              _buildCategoryStars(
                context,
                'Rate',
                ["5", "4", "3", "2", "1"],
                filterController.selectedRate.value,
                (index) {
                  filterController.updateRate(index);
                },
                filterController.selectedRate, // Passing the correct observable
              ),
              SizedBox(height: 20),
              // Category Filter
              _buildCategory(
                context,
                "Category",
                ["Vegan", "Vegetarian", "Non-Veg", "Keto"],
                filterController.selectedCategory.value,
                (index) {
                  filterController.updateCategory(index);
                },
                filterController
                    .selectedCategory, // Passing the correct observable
              ),
              SizedBox(height: 20),
              Center(
                child: MyButton(
                  width: 200,
                  txt: 'Filter',
                  clr: AppColors.primaryColor,
                  ontap: () {
                    Get.back(); // Apply filter and close bottom sheet
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // Same for stars category
  // Widget _buildCategoryStars(BuildContext context, String title, List<String> options, int selectedIndex, Function(int) onTap) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(
  //         title,
  //         style: GoogleFonts.roboto(
  //           fontSize: 16.sp,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //       SizedBox(height: 10.h),
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //         children: List.generate(options.length, (index) {
  //           return GestureDetector(
  //             onTap: () {
  //               onTap(index);
  //             },
  //             child: Obx(() {
  //               bool isSelected = filterController.selectedRate.value == index;
  //               return Container(
  //                 height: 40.h,
  //                 width: 60.w,
  //                 decoration: BoxDecoration(
  //                   color: isSelected ? AppColors.primaryColor : Colors.transparent,
  //                   border: Border.all(color: AppColors.primaryColor),
  //                   borderRadius: BorderRadius.circular(10),
  //                 ),
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                   children: [
  //                     Text(
  //                       options[index],
  //                       style: GoogleFonts.roboto(
  //                         color: isSelected ? Colors.white : AppColors.primaryColor,
  //                         fontSize: 14.sp,
  //                       ),
  //                     ),
  //                     Icon(
  //                       Icons.star,
  //                       color: isSelected ? Colors.white : AppColors.primaryColor,
  //                     ),
  //                   ],
  //                 ),
  //               );
  //             }),
  //           );
  //         }),
  //       ),
  //     ],
  //   );
  // }
}

class FilterController extends GetxController {
  var selectedTime = 0.obs;
  var selectedRate = 0.obs;
  var selectedCategory = 0.obs;

  void updateTime(int index) {
    selectedTime.value = index;
  }

  void updateRate(int index) {
    selectedRate.value = index;
  }

  void updateCategory(int index) {
    selectedCategory.value = index;
  }
}
