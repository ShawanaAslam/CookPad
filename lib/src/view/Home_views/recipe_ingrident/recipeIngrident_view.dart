import 'package:cookpad/src/common_widgets/text-widget.dart';
import 'package:cookpad/src/constants/pictures.dart';
import 'package:cookpad/src/view/Home_views/saved_recipe/savedrecipe_widget/saved_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class RecipeIngridentView extends StatefulWidget {
  const RecipeIngridentView({super.key});

  @override
  State<RecipeIngridentView> createState() => _RecipeIngridentViewState();
}

class _RecipeIngridentViewState extends State<RecipeIngridentView> {
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
        child: Column(
          children: [
SavedContainer(txt: '......', txt1:'......', path: Pic.burgr)
          ],
        ),
      ),

    );
  }
}
