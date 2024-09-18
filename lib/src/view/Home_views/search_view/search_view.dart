
import 'package:cookpad/src/common_widgets/searchcontainer_widget.dart';
import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/constants/pictures.dart';
import 'package:cookpad/src/common_widgets/searchRow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common_widgets/row_widget.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back)),
        // leading: IconButton(
        //     (){},child: Icon(Icons.arrow_back)),
        title: TextWidget(txt: 'Search recipes',fntsze: 18.sp,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,),
        child: SingleChildScrollView(
          child: Column(
          
            children: [
              SearchRow(),
              SizedBox(height: 5,),
              RowWidget(txt:'Recent Search',),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SearchContainer(txt: 'Traditional spare ribs \nbaked', txt1: 'By Chef John', path: Pic.bowl,hght: 70.h,),
                  SearchContainer(txt: 'Lamb chops with fruity \ncouscous and mint', txt1: 'By Spicy Nelly', path: Pic.food,hght: 70.h,),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SearchContainer(txt: 'spice roasted chicken \nwith flavored rice', txt1: 'By Mark Kelvin', path: Pic.piza,hght: 70.h,),
                  SearchContainer(txt: 'Chinese style Egg fried \nrice with sliced pork..', txt1: 'By laura wilson', path: Pic.nodles,hght: 70.h,),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SearchContainer(txt: 'Lamb chops with fruity \ncouscous and mint', txt1: 'By Spicy Nelly', path: Pic.rice,hght: 70.h,),
                  SearchContainer(txt: 'Traditional spare ribs \nbaked', txt1: 'By Chef John', path: Pic.bowl,hght: 70.h,),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SearchContainer(txt: 'Lamb chops with fruity \ncouscous and mint', txt1: 'By Spicy Nelly', path: Pic.food,hght: 70.h,),
                  SearchContainer(txt: 'Traditional spare ribs \nbaked', txt1: 'By Chef John', path: Pic.piza,hght: 70.h,),
                ],
              ),
          
             ]),
        )





      )
    );
  }
}
