import 'package:flutter/cupertino.dart';

import '../../../../constants/pictures.dart';
import 'ingridentIcon_Row.dart';
import 'ingrident_card.dart';

class IngredientContainer extends StatelessWidget {
  const IngredientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child:Column(children:[
        IngridentIconRow(ing: 'items',),
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
      ])
      ,              );
  }
}