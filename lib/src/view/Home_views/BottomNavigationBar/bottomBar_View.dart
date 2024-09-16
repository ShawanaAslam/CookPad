

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
//import 'package:cookpad/src/view/Home_views/notification_view/notificationAll_view.dart';
import 'package:cookpad/src/view/Home_views/saved_recipe/savedrecipe_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/pictures.dart';
import '../home_view/home_view.dart';
import '../notificationAll_view/notificationAll_view.dart';
import '../profile_view/Profile_view.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _bottomNavIndex = 0;

  final List<Widget> _screens = [

    HomeView(),
    SavedRecipeView(),
    NotificationAllView(),
    ProfileView()
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: Container(
        width: 56.0, // Width and height should be equal to create a circle
        height: 56.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.primaryColor,
        ),
        child: FloatingActionButton(
          highlightElevation: 0.0,
          splashColor: Colors.transparent,
          onPressed: () {
            // Add your action for the floating action button
          },
          child: Icon(Icons.add, color: Colors.white),
          backgroundColor: Colors.transparent, // Make the background color transparent
          elevation: 0, // Remove shadow
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeColor: AppColors.primaryColor,
        inactiveColor: AppColors.lightGreyColor,
        icons: [
          // icon:Image.asset(),
          //  ImageIcon( AssetImage(Pic.icn,)),
          //
          //   Icon(Icons.add,size: 30,color: Colors.white,),
          //   Image(image: AssetImage(Pic.noti,)),
          //   Image(image: AssetImage(Pic.profile)),
          Icons.home_outlined,
          Icons.save_alt_sharp,
          Icons.notifications_outlined,
          Icons.person_outline_outlined,
        ],
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        // Other parameters can be added as needed
      ),
      body: _screens[_bottomNavIndex],
    );
  }
}






//--------------------------------------------------------------------
//-----------------------------------------------------------------

// import 'package:cookpad/src/constants/colors.dart';
// import 'package:cookpad/src/constants/pictures.dart';
// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//
// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }
//
// class _BottomNavBarState extends State<BottomNavBar> {
//
//   int _page = 0;
//   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         bottomNavigationBar: CurvedNavigationBar(
//           key: _bottomNavigationKey,
//           index: 0,
//           items: <Widget>[
//             Image(image: AssetImage(Pic.frstbar,)),
//
//             Image(image: AssetImage(Pic.icn,),),
//             Icon(Icons.add,size: 30,color: Colors.white,),
//             Image(image: AssetImage(Pic.noti,)),
//             Image(image: AssetImage(Pic.profile)),
//
//           ],
//           color: Colors.white,
//           buttonBackgroundColor: AppColors.primaryColor,
//           //backgroundColor: Colors.blueAccent,
//           animationCurve: Curves.easeInOut,
//           animationDuration: Duration(milliseconds: 600),
//           onTap: (index) {
//             setState(() {
//               _page = index;
//             });
//           },
//           letIndexChange: (index) => true,
//         ),
//         body: Container(
//             color: Colors.blueAccent,
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text(_page.toString(), style: TextStyle(fontSize: 160)),
//                   ElevatedButton(
//                     child: Text('Go To Page of index 1'),
//                     onPressed: () {
//                       final CurvedNavigationBarState? navBarState =
//                           _bottomNavigationKey.currentState;
//                       navBarState?.setPage(1);
//                     },
//                   )
//                 ],
//               ),
//             ),
//            ));
//     }
// }
