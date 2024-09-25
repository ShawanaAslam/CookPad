import 'package:flutter/material.dart';

import '../../../../constants/pictures.dart';
import '../../saved_recipe/savedrecipe_widget/saved_container.dart';
class RecipeWidget extends StatelessWidget {
  const RecipeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        SavedContainer(path: Pic.burgr,txt:'Traditional spare \nribs baked' ,hght: 50,
          txt1: 'By Chef John',),
        SizedBox(height: 10,),
        SavedContainer(path: Pic.burgr,txt:'spice roasted chicken \nwith flavored rice' ,hght: 50,
          txt1: 'By Mark Kelvin',),
        SizedBox(height: 10,),
        SavedContainer(path: Pic.burgr,txt:'spice roasted chicken \nwith flavored rice' ,hght: 50,
          txt1: 'By Mark Kelvin',),
      ],
    );
  }
}
