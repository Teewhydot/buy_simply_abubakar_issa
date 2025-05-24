import 'package:buysimply_project_abubakarissa/components/image.dart';
import 'package:buysimply_project_abubakarissa/core/theme/colors.dart';
import 'package:buysimply_project_abubakarissa/features/fe_interview_task/presentation/widgets/status_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/assets.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 79.h,
      color: kNavBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(0, Assets.svgsMenu1, statusCount: null),
          _buildNavItem(1, Assets.svgsMenu2, statusCount: 1),
          _buildNavItem(2, Assets.svgsMenu3, statusCount: 10),
          _buildNavItem(3, Assets.svgsProfile, statusCount: null),
        ],
      ),
    );
  }

  Widget _buildNavItem(
    int index,
    String assetPath, {
    int? statusCount,
    double? right = -9,
    double? top = 22,
  }) {
    final isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child:
          isSelected && statusCount != null
              ? StatusWrapper(
                statusColor: isSelected ? kAccentColor : Colors.transparent,
                statusCount: statusCount ?? 0,
                rightPosition: right ?? -9,
                topPosition: top ?? 22,
                child: CustomAsset(
                  assetPath: assetPath,
                  assetType: AssetType.svg,
                  width: 28,
                  height: 28,
                  svgAssetColor: isSelected ? kAccentColor : kNavItemColor,
                ),
              )
              : CustomAsset(
                assetPath: assetPath,
                assetType: AssetType.svg,
                width: 28,
                height: 28,
                svgAssetColor: isSelected ? kAccentColor : kNavItemColor,
              ),
    );
  }
}
