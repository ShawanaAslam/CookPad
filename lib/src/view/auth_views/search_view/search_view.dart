
import 'package:cookpad/src/common_widgets/searchcontainer_widget.dart';
import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/constants/pictures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        leading: Icon(Icons.arrow_back),
        title: TextWidget(txt: 'Search recipes',fntsze: 18.sp,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,),
        child: SingleChildScrollView(
          child: Column(
          
            children: [
              Row(children: [
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
                  Expanded(
                      flex:10,
                      child:
                  FloatingActionButton(onPressed:(){},
                   // mini: true,
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(Icons.linear_scale_rounded,color: Colors.white,),
                  )
              )]),
              SizedBox(height: 5,),
              RowWidget(txt:'Recent Search',),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SearchContainer(txt: 'Traditional spare ribs \nbaked', txt1: 'By Chef John', path: Pic.bowl),
                  SearchContainer(txt: 'Lamb chops with fruity \ncouscous and mint', txt1: 'By Spicy Nelly', path: Pic.food),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SearchContainer(txt: 'spice roasted chicken \nwith flavored rice', txt1: 'By Mark Kelvin', path: Pic.piza),
                  SearchContainer(txt: 'Chinese style Egg fried \nrice with sliced pork..', txt1: 'By laura wilson', path: Pic.nodles),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SearchContainer(txt: 'Lamb chops with fruity \ncouscous and mint', txt1: 'By Spicy Nelly', path: Pic.rice),
                  SearchContainer(txt: 'Traditional spare ribs \nbaked', txt1: 'By Chef John', path: Pic.bowl),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SearchContainer(txt: 'Lamb chops with fruity \ncouscous and mint', txt1: 'By Spicy Nelly', path: Pic.food),
                  SearchContainer(txt: 'Traditional spare ribs \nbaked', txt1: 'By Chef John', path: Pic.piza),
                ],
              ),
          
             ]),
        )





      )
    );
  }
}
