// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../constants/colors.dart';
// import '../constants/pictures.dart';

// class SearchRow extends StatelessWidget {
//   const SearchRow({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(children: [
//       Expanded(flex: 70,
//         child:
//         Container(
//           height: 40.h,
//           width: 255.w,
//           child: TextFormField(

//             // controller: searchController,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: AppColors.greyColor, // Border color here
//                     width: 2.0, // Border width
//                   ),
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//                 hintText: "Search recipe",
//                 hintStyle: GoogleFonts.roboto(fontSize: 12.sp,color: Colors.grey),
//                 prefixIcon: Icon(Icons.search_rounded,color: Colors.grey,size: 20,),

//               )
//           ),
//         ),),
//       SizedBox(width: 10,),
//       InkWell(

//         child: Container(
//           height:40.sp ,
//           width: 40.sp,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: AppColors.primaryColor,
//           ),
//           child: Image.asset(Pic.filter),
//         ),
//       )

//     ]
//     );
//   }
// }

///----------
import 'package:cookpad/src/common_widgets/mybutton_widget.dart';
import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/pictures.dart';

class SearchRow extends StatefulWidget {
  const SearchRow({Key? key}) : super(key: key);

  @override
  _SearchRowState createState() => _SearchRowState();
}

class _SearchRowState extends State<SearchRow> {
  // Track the selected buttons for each category
  int? selectedTimeIndex;
  int? selectedRateIndex;
  int? selectedCategoryIndex;

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
              // controller: searchController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.greyColor, // Border color here
                    width: 2.0, // Border width
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

  // Method to open the bottom sheet
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
                  TextWidget(txt: 'Filter Search'),
                ],
              ),
              // Time Category
              _buildCategory(
                "Time",
                ["10 min", "20 min", "30 min", "40 min"],
                selectedTimeIndex,
                (index) {
                  setState(() {
                    selectedTimeIndex = index;
                  });
                  //  Navigator.pop(context); // Close bottom sheet after selection
                },
              ),
              SizedBox(height: 20),
              // Rate Category
              _buildCategory(
                "Rate",
                ["1 Star", "2 Stars", "3 Stars", "4 Stars"],
                selectedRateIndex,
                (index) {
                  setState(() {
                    selectedRateIndex = index;
                  });
                  //  Navigator.pop(context); // Close bottom sheet after selection
                },
              ),
              SizedBox(height: 20),
              // Category .Category
              _buildCategory(
                "Category",
                ["Vegan", "Vegetarian", "Non-Veg", "Keto"],
                selectedCategoryIndex,
                (index) {
                  setState(() {
                    selectedCategoryIndex = index;
                  });
                  //   Navigator.pop(context); // Close bottom sheet after selection
                },
              ),
              SizedBox(height: 20),
              MyButton(
                txt: 'Filter',
                clr: AppColors.primaryColor,
                ontap: () => Get.back(),
              )
            ],
          ),
        );
      },
    );
  }

  // Widget to build each category section
  Widget _buildCategory(String title, List<String> options, int? selectedIndex,
      Function(int) onTap) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style:
              GoogleFonts.roboto(fontSize: 16.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(options.length, (index) {
            bool isSelected = selectedIndex == index;
            return GestureDetector(
              onTap: () => onTap(index),
              child: Container(
                height: 40.h,
                width: 80.w,
                decoration: BoxDecoration(
                  color:
                      isSelected ? AppColors.primaryColor : Colors.transparent,
                  border: Border.all(color: AppColors.primaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    options[index],
                    style: GoogleFonts.roboto(
                      color: isSelected ? Colors.white : AppColors.primaryColor,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
