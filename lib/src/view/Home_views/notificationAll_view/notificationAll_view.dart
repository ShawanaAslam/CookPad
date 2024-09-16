import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/view/Home_views/notificationAll_view/notificationAll_Widget/notificationAll_Container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/selected_button.dart';
import '../../../common_widgets/text-widget.dart';

class NotificationAllView extends StatefulWidget {
  const NotificationAllView({super.key});

  @override
  State<NotificationAllView> createState() => _NotificationAllViewState();
}

class _NotificationAllViewState extends State<NotificationAllView> with TickerProviderStateMixin{
  
  late TabController _tabbcontroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabbcontroller=TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabbcontroller.dispose();
  }
   //int check=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBar(title: TextWidget(txt: 'Notification',fntsze: 18.sp,fntwt: FontWeight.w600,),
        centerTitle: true,

      bottom: TabBar(
        controller: _tabbcontroller,
        tabs: [
          Tab(text:'All'),
          Tab(text:'read'),
          Tab(text:'unread')
          // SelectedButton(text: 'China', ontap: (){
          //   setState(() {
          //     check=1;
          //   });
          // },
          //     check: check,
          //     check2: 1, hght: 31.sp, wdth: 76.sp
          // ),
          // SelectedButton(text: 'China', ontap: (){
          //   setState(() {
          //     check=2;
          //   });
          // },
          //     check: check,
          //     check2: 2, hght: 31.sp, wdth: 76.sp
          // ),
          // SelectedButton(text: 'China', ontap: (){
          //   setState(() {
          //     check=3;
          //   });
          // },
          //     check: check,
          //     check2: 3, hght: 31.sp, wdth: 76.sp
          // ),
        ],
      )
        ),
      
      body:
          
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,),
        child: SingleChildScrollView(
          child: Column(
            children: [
          
          //     Row(
          //       children: [
          //     SelectedButton(text: 'China', ontap: (){
          //   setState(() {
          //     check=1;
          //   });
          // },
          //     check: check,
          //     check2: 1, hght: 33.sp, wdth: 103.sp
          // ),
          // SelectedButton(text: 'China', ontap: (){
          //   setState(() {
          //     check=2;
          //   });
          // },
          //     check: check,
          //     check2: 2, hght: 33.sp, wdth: 103.sp
          // ),
          // SelectedButton(text: 'China', ontap: (){
          //   setState(() {
          //     check=3;
          //   });
          // },
          //     check: check,
          //     check2: 3, hght: 33.sp, wdth: 102.sp
          // ),
          //       ],
          //     ),
              SizedBox(height: 20,),
              TextWidget(txt: 'Today',fntwt: FontWeight.w600,fntsze: 16.sp,),
              SizedBox(height: 10,),
              NotificationAllContainer(),
              SizedBox(height: 10,),
              NotificationAllContainer(),
              SizedBox(height: 10,),
              NotificationAllContainer(),
              SizedBox(height: 10,),
              TextWidget(txt: 'Yesterday',fntwt: FontWeight.w600,fntsze: 16.sp,),
              SizedBox(height: 10,),
              NotificationAllContainer(),
              SizedBox(height: 10,),
              NotificationAllContainer(),
          
                ],
              ),
        )
        ),
    );
  }
}
