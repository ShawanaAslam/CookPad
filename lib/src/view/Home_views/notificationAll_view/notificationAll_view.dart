import 'package:cookpad/src/constants/colors.dart';
import 'package:cookpad/src/view/Home_views/notificationAll_view/notificationAll_Widget/allButton_widget.dart';
import 'package:cookpad/src/view/Home_views/notificationAll_view/notificationAll_Widget/notificationAll_Container.dart';
import 'package:cookpad/src/view/Home_views/notificationAll_view/notificationAll_Widget/readButton_Widget.dart';
import 'package:cookpad/src/view/Home_views/notificationAll_view/notificationAll_Widget/unreadButton_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/selected_button.dart';
import '../../../common_widgets/text-widget.dart';

class NotificationAllView extends StatefulWidget {
  const NotificationAllView({super.key});

  @override
  State<NotificationAllView> createState() => _NotificationAllViewState();
}

class _NotificationAllViewState extends State<NotificationAllView> {
  
  int check=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBar(title: TextWidget(txt: 'Notification',fntsze: 18.sp,fntwt: FontWeight.w600,),
        centerTitle: true,
      ),
          body:SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(children: [
              Row(children: [
              SelectedButton(text: 'All', ontap: (){
                setState(() {
                  check=1;
                });
              },
                  check: check,
                  check2: 1, hght: 33.sp, wdth: 103.sp
              ),
              SelectedButton(text: 'Read', ontap: (){
                setState(() {
                  check=2;
                });
              },
                  check: check,
                  check2: 2, hght: 33.sp, wdth: 107.sp
              ),
              SelectedButton(text: 'Unread', ontap: (){
                setState(() {
                  check=3;
                });
              },
                  check: check,
                  check2: 3, hght: 33.sp, wdth: 107.sp
              ),
                      ],
                    ),

                  SizedBox(height: 10,),
                check==1?AllButtonWidget():check==2?ReadButtonWidget():UnReadButtonWidget(),



                  ]),
            ),
          )
    );
  }
}
