import 'package:buysimply_project_abubakarissa/components/image.dart';
import 'package:buysimply_project_abubakarissa/core/theme/colors.dart';
import 'package:buysimply_project_abubakarissa/features/fe_interview_task/presentation/widgets/question_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../components/texts.dart';
import '../../../../generated/assets.dart';
import '../widgets/answers_widget.dart';
import '../widgets/custom_nav_bar.dart';
import '../widgets/fe_container.dart';

class FeInterviewTask extends StatelessWidget {
  const FeInterviewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      bottomNavigationBar: CustomNavBar(),
      body: Stack(
        children: [
          Scaffold(
            body: Container(
              width: 1.sw,
              height: 1.sh * 0.7,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.imagesFeBg),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 30,
                    offset: Offset(0, 10), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            left: 0,
            top: 0,
            bottom: 0,
            child: Container(
              width: 0.9.sw,
              decoration: BoxDecoration(
                backgroundBlendMode: BlendMode.darken,
                gradient: LinearGradient(
                  colors: [Colors.transparent, kBlack],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.2, 0.6],
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: "Stroll Bonfire",
                          fontWeight: FontWeight.w700,
                          fontSize: 34,
                          color: kHeaderColor,
                        ),
                        Icon(Icons.keyboard_arrow_down, color: kHeaderColor),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomAsset(
                          assetPath: Assets.svgsTimer,
                          width: 13,
                          height: 15,
                          assetType: AssetType.svg,
                        ),
                        5.horizontalSpace,
                        CustomText(
                          text: "22h 00m",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: kWhite,
                        ),
                        10.horizontalSpace,
                        CustomAsset(
                          assetPath: Assets.svgsProfile,
                          width: 13,
                          height: 15,
                          assetType: AssetType.svg,
                        ),
                        5.horizontalSpace,
                        CustomText(
                          text: "103",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: kWhite,
                        ),
                      ],
                    ),
                    311.verticalSpace,
                    QuestionWidget(),
                    30.verticalSpace,
                    CustomText(
                      text: "“Mine is definitely the peace in the morning.”",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: kHeaderColor,
                      fontStyle: FontStyle.italic,
                    ),
                    14.verticalSpace,
                    AnswersWidget(),
                    11.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Pick your option.",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: kWhite,
                            ),
                            CustomText(
                              text: "See who has a similar mind.",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: kWhite,
                            ),
                          ],
                        ),
                        Row(
                          spacing: 6,
                          children: [
                            FEContainer(
                              width: 48,
                              height: 48,
                              borderRadius: 48,
                              borderColor: kAccentColor,
                              containerColor: kBlack,
                              isSelected: true,
                              child: Icon(
                                Icons.mic,
                                size: 35,
                                color: kAccentColor,
                              ),
                            ),
                            FEContainer(
                              width: 48,
                              height: 48,
                              borderRadius: 48,
                              borderColor: kAccentColor,
                              containerColor: kAccentColor,
                              isSelected: true,
                              child: Icon(
                                Icons.arrow_forward,
                                size: 35,
                                color: kBlack,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    7.verticalSpace,
                  ],
                ).paddingOnly(left: 16.w, right: 16.w),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
