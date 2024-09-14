import 'package:cookpad/src/common_widgets/selected_button.dart';
import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:cookpad/src/constants/pictures.dart';
import 'package:cookpad/src/view/Home_views/recipe_ingrident/recipeIngrident_Widget/ingridentCircl_Row.dart';
import 'package:cookpad/src/view/Home_views/recipe_ingrident/recipeIngrident_Widget/ingridentIcon_Row.dart';
import 'package:cookpad/src/view/Home_views/recipe_ingrident/recipeIngrident_Widget/ingrident_card.dart';
import 'package:cookpad/src/view/Home_views/saved_recipe/savedrecipe_widget/saved_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'recipeIngrident_Widget/ingrdntFirst_Row.dart';
class RecipeIngridentView extends StatefulWidget {
  const RecipeIngridentView({super.key});

  @override
  State<RecipeIngridentView> createState() => _RecipeIngridentViewState();
}

class _RecipeIngridentViewState extends State<RecipeIngridentView> {
  int check=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions: [

          PopupMenuButton(
            onSelected: (String value) {
              if (value == 'share') {

              }
              if (value == 'Rate Recipe')
              {

              }
              if (value == 'Review')
              {

              }
              else if (value == 'Unsave') {
            //     Get.defaultDialog(
            //       title: 'Message',
            //       content: Text('Do you want to Delete this Data?'),
            //       actions: [
            //         ElevatedButton(
            //           onPressed: () {
            //             // FirebaseFirestore.instance
            //             //     .collection(userEmail)
            //             //     .doc(data.docs[index].id)
            //             //     .delete();
            //             Get.back(); // Close the dialog after deletion
            //           },
            //           child: Text('Yes'),
            //         ),
            //         ElevatedButton(
            //           onPressed: () {
            //             Get.back();
            //           },
            //           child: Text('No'),
            //         ),
            //       ],
            //     );
              }

             },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: 'share',
                  child: ListTile(
                    leading:  Image.asset(Pic.share),
                    trailing:TextWidget(txt: 'Share',fntsze: 14,),
                  ),
                ),
                PopupMenuItem(
                  value: 'Rate Recipe',
                  child: ListTile(
                    leading:Icon(Icons.star),
                    trailing:  TextWidget(txt: 'Rate Recipe',fntsze: 14,),
                  ),
                ),
                PopupMenuItem(
                  value: 'Review',
                  child: ListTile(
                    leading:Image.asset(Pic.msg) ,
                    trailing: TextWidget(txt: 'Review',fntsze: 14,),
                  ),
                ),
                PopupMenuItem(
                  value: 'Unsave',
                  child: ListTile(
                    leading:Image.asset(Pic.pop,) ,
                    trailing: TextWidget(txt: 'Unsave',fntsze: 14,),
                  ),
                ),
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
          SavedContainer( path: Pic.burgr,hght: 65,),
              SizedBox(height: 5,),
              IngrdntFirstRow(txt: 'Spicy chicken burger with \nFrench fries',txt1: '(13K Reviews)',),
              SizedBox(height: 10,),
              IngridentCirclRow(),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                SelectedButton(text: "Ingrident",hght: 33.sp,wdth: 135.sp,
                ontap: (){
              check=1;
              setState(() {
          
              });
              },check: check,
              check2: 1,
                ),
                SelectedButton(text: "Procedure",hght: 33.sp,wdth: 135.sp,
                  ontap: (){
                    check=2;
                    setState(() {
          
                    });
                  },check: check,
                  check2: 2,
                )
              ],),
              SizedBox(height: 10,),
              IngridentIconRow(),
              SizedBox(height: 10,),
              IngridentCard(txt: 'Tomatos', txt2: '500g', path: Pic.tomato,wdt: 120,),
              SizedBox(height: 5,),
              IngridentCard(txt: 'Cabbage', txt2: '300g', path: Pic.cabge,wdt: 120,),
              SizedBox(height: 5,),
              IngridentCard(txt: 'Taco', txt2: '300g', path: Pic.taco,wdt: 150,),
              SizedBox(height: 5,),
              IngridentCard(txt: 'Slice Bread', txt2: '300g', path: Pic.slice,wdt: 105,),
            ],
          ),
        ),
      ),

    );
  }
}
