import 'package:buysimply_project_abubakarissa/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FEContainer extends StatelessWidget {
  final Widget child;
  final bool isSelected;
  final double width, height, borderRadius;
  final Color borderColor, containerColor;
  const FEContainer({
    super.key,
    this.child = const SizedBox(),
    this.isSelected = false,
    this.width = 160,
    this.height = 57,
    this.borderRadius = 12,
    this.borderColor = kAccentColor,
    this.containerColor = kContainerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
        color: containerColor,
        border: isSelected ? Border.all(color: borderColor, width: 2) : null,
        borderRadius: BorderRadius.circular(borderRadius).r,
      ),
      child: child,
    );
  }
}
