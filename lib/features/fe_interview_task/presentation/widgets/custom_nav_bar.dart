import 'package:buysimply_project_abubakarissa/components/image.dart';
import 'package:buysimply_project_abubakarissa/core/theme/colors.dart';
import 'package:buysimply_project_abubakarissa/features/fe_interview_task/presentation/widgets/status_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/assets.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 79.h,
      color: kNavBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomAsset(
            assetPath: Assets.svgsMenu1,
            assetType: AssetType.svg,
            width: 28,
            height: 28,
          ),
          StatusWrapper(
            statusColor: kAccentColor,
            statusCount: 1,
            child: CustomAsset(
              assetPath: Assets.svgsMenu2,
              assetType: AssetType.svg,
              width: 28,
              height: 28,
            ),
          ),
          CustomAsset(
            assetPath: Assets.svgsMenu3,
            assetType: AssetType.svg,
            width: 28,
            height: 28,
          ),
          CustomAsset(
            assetPath: Assets.svgsMenu1,
            assetType: AssetType.svg,
            width: 28,
            height: 28,
          ),
        ],
      ),
    );
  }
}
