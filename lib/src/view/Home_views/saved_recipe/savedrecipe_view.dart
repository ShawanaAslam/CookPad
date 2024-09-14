import 'package:cookpad/src/constants/pictures.dart';
import 'package:cookpad/src/view/Home_views/saved_recipe/savedrecipe_widget/saved_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/text-widget.dart';

class SavedRecipeView extends StatefulWidget {
  const SavedRecipeView({super.key});

  @override
  State<SavedRecipeView> createState() => _SavedRecipeViewState();
}

class _SavedRecipeViewState extends State<SavedRecipeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(txt: 'Saved recipes',fntsze: 18.sp,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(children: [
          SavedContainer(txt: 'Traditional spare ribs \nbaked', txt1: 'By Chef John', path: Pic.piza,hght: 50,),
            SizedBox(height: 15,),
            SavedContainer(txt: 'spice roasted chicken \nwith flavored rice', txt1: 'By Mark Kelvin', path: Pic.rice,hght: 50,),
            SizedBox(height: 15,),
            SavedContainer(txt: 'Spicy fried rice mix \nchicken bali', txt1: 'By Spicy Nelly', path: Pic.food,hght: 50,),
            SizedBox(height: 15,),
            SavedContainer(txt: 'spice roasted chicken \nwith flavored rice', txt1: 'By Chef John', path: Pic.nodles,hght: 50,),
            SizedBox(height: 15,),
           
          
          ],),
        ),
      ),
    );
  }
}
