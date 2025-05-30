import 'package:buysimply_project_abubakarissa/components/texts.dart';
import 'package:buysimply_project_abubakarissa/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusWrapper extends StatelessWidget {
  final Widget child;
  final Color statusColor;
  final int statusCount;
  final double rightPosition, topPosition;
  const StatusWrapper({
    super.key,
    required this.child,
    required this.statusColor,
    required this.statusCount,
    this.rightPosition = -9,
    this.topPosition = 22,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        child,
        Positioned(
          right: rightPosition.w,
          top: topPosition.h,
          child: Container(
            width: 16.w,
            height: 13.w,
            decoration: BoxDecoration(
              border: Border.all(color: kNavBarColor, width: 2.w),
              color: statusColor,
              borderRadius: BorderRadius.all(Radius.circular(15).r),
            ),
            child: CustomText(text: statusCount.toString(), fontSize: 7),
          ),
        ),
      ],
    );
  }
}
