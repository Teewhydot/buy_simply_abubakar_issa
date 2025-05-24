import 'package:buysimply_project_abubakarissa/components/texts.dart';
import 'package:buysimply_project_abubakarissa/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AnswersWidget extends StatefulWidget {
  const AnswersWidget({super.key});

  @override
  State<AnswersWidget> createState() => _AnswersWidgetState();
}

class _AnswersWidgetState extends State<AnswersWidget> {
  int selectedIndex = -1; // Tracks the selected container index
  final List<String> optionTexts = [
    "The peace in the mornings",
    "The magical golden hours",
    "Wind-down time after dinners",
    "The serenity past midnight",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        Wrap(
          runSpacing: 12,
          spacing: 12,
          children: List.generate(optionTexts.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index; // Update the selected index
                });
              },
              child: FEContainer(
                isSelected: selectedIndex == index, // Highlight if selected
                child: Option(
                  text: optionTexts[index],
                  option: String.fromCharCode(65 + index), // A, B, C, D
                  isSelected: selectedIndex == index,
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}

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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 20.w,
          height: 20.h,
          decoration: BoxDecoration(
            color: isSelected ? kAccentColor : kContainerColor,
            borderRadius: BorderRadius.circular(20).r,
            border: isSelected ? null : Border.all(color: kWhite, width: 2),
          ),
          child: CustomText(text: option, fontSize: 12, color: kWhite),
        ),
        9.horizontalSpace,
        SizedBox(
          width: 120,
          child: CustomWrapText(
            text: text,
            fontSize: 12,
            color: kWhite,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.start,
          ),
        ),
      ],
    ).paddingOnly(left: 10);
  }
}

class FEContainer extends StatelessWidget {
  final Widget child;
  final bool isSelected;
  const FEContainer({
    super.key,
    this.child = const SizedBox(),
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57.h,
      width: 166.w,
      decoration: BoxDecoration(
        color: kContainerColor,
        border: isSelected ? Border.all(color: kAccentColor, width: 2) : null,
        borderRadius: BorderRadius.circular(12).r,
      ),
      child: child,
    );
  }
}
