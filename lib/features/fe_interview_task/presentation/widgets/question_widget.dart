import 'package:buysimply_project_abubakarissa/components/image.dart';
import 'package:buysimply_project_abubakarissa/components/texts.dart';
import 'package:buysimply_project_abubakarissa/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../generated/assets.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ProfileCard(),
        Positioned(
          top: 30,
          left: 70.w,
          child: SizedBox(
            width: 0.65.sw,
            child: CustomWrapText(
              text: "What is your favorite time of the day?",
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: kWhite,
              textAlign: TextAlign.start,
            ),
          ),
        ),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 7.h,
          left: 30.w,
          child: Container(
            width: 107.w,
            height: 20.h,
            decoration: BoxDecoration(
              color: kNavBarColor,
              borderRadius: BorderRadius.all(Radius.circular(10).r),
            ),
            child: CustomText(
              text: "Angelina, 28",
              fontSize: 11,
              color: kWhite,
              fontWeight: FontWeight.w700,
              alignment: MainAxisAlignment.end,
            ).paddingOnly(right: 8),
          ),
        ),
        CircleAvatar(
          radius: 30.r,
          backgroundColor: kProfileCardColor.withOpacity(0.9),
          child: CircleAvatar(
            radius: 25.r,
            child: CustomAsset(assetPath: Assets.imagesPerson),
          ),
        ),
      ],
    );
  }
}
