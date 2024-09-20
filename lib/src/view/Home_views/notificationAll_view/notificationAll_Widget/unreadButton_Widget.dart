import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common_widgets/text-widget.dart';
import 'notificationAll_Container.dart';

class UnReadButtonWidget extends StatelessWidget {
  const UnReadButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

          TextWidget(txt: 'Today',fntwt: FontWeight.w600,fntsze: 16.sp,),
          SizedBox(height: 10,),
          NotificationAllContainer(
            txt: 'Alert Notification!',
          ),
          SizedBox(height: 10,),
          NotificationAllContainer(txt: 'Alert Notification!',),
          SizedBox(height: 10,),
          NotificationAllContainer(txt: 'Alert Notification!',),
          SizedBox(height: 10,),
          TextWidget(txt: 'Yesterday',fntwt: FontWeight.w600,fntsze: 16.sp,),
          SizedBox(height: 10,),
          NotificationAllContainer(txt: 'Alert! Notification',),
          SizedBox(height: 10,),
          NotificationAllContainer(txt: 'Alert Notification!',),
        ],
      ),
    );
  }
}
