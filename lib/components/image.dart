import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

enum AssetType { asset, network, svg }

class CustomAsset extends StatelessWidget {
  final String assetPath;
  final double width, height, borderRadius;
  final BoxFit fit;
  final AssetType assetType;
  final Color? svgAssetColor;
  final MainAxisAlignment imageAlignment = MainAxisAlignment.center;

  const CustomAsset({
    super.key,
    required this.assetPath,
    this.width = 100.0,
    this.height = 100.0,
    this.borderRadius = 0.0,
    this.svgAssetColor,
    this.fit = BoxFit.cover,
    this.assetType = AssetType.asset,
  });
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: switch (assetType) {
        AssetType.asset => Image.asset(
          assetPath,
          width: width.w,
          height: height.h,
          fit: fit,
        ),
        AssetType.network => CachedNetworkImage(
          imageUrl: assetPath,
          width: width.w,
          height: height.h,
          fit: fit,
          filterQuality: FilterQuality.high,
          placeholder:
              (context, url) =>
                  const Center(child: CircularProgressIndicator.adaptive()),
        ),
        AssetType.svg => Align(
          alignment: Alignment.center,
          child: SvgPicture.asset(
            assetPath,
            width: width.w,
            height: height.h,
            color: svgAssetColor,
          ),
        ),
      },
    );
  }
}
