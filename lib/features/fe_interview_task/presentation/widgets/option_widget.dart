import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/texts.dart';
import '../../../../core/theme/colors.dart';

class Option extends StatelessWidget {
  final String text, option;
  final bool isSelected;
  const Option({
    super.key,
    required this.text,
    required this.option,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 5.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            width: 20.w,
            height: 20.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? kAccentColor : kContainerColor,
              border:
                  isSelected
                      ? null
                      : Border.all(color: kOptionTextColor, width: 2),
            ),
            child: CustomText(
              text: option,
              fontSize: 11,
              color: kOptionTextColor,
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: CustomWrapText(
            text: text,
            fontSize: 14,
            color: kOptionTextColor,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
