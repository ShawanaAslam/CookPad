// import 'package:flutter/material.dart';
//
// import '../../../common_widgets/text-widget.dart';
// import '../../../constants/colors.dart';
//
//
// class TabBarView extends StatefulWidget {
//   const TabBarView({super.key});
//
//   @override
//   State<TabBarView> createState() => _TabBarViewState();
// }
//
// class _TabBarViewState extends State<TabBarView>  with TickerProviderStateMixin{
//
//   late TabController _tabbcontroller;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _tabbcontroller=TabController(length: 3, vsync: this);
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     _tabbcontroller.dispose();
//   }
//   //int check=0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: AppColors.scaffoldColor,
//         appBar: AppBar(
//         //title: TextWidget(txt: 'Notification',fntsze: 18.sp,fntwt: FontWeight.w600,),
//           //  centerTitle: true,
//
//             bottom: TabBar(
//               controller: _tabbcontroller,
//               tabs: [
//                 Tab(text:'All'),
//                 Tab(text:'read'),
//                 Tab(text:'unread')
//
//               ],
//             )
//         )
//    // body:TabBarView(
//
//
//     )
//     );
//   }
// }
//
