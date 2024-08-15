import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:qanony/core/utils/assets.dart';
import 'package:qanony/core/utils/colors.dart';

Widget backButton({required Function() onPressed}) {
  return Container(
    margin: const EdgeInsets.only(left: 10, top: 10),
    decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.borderColor.withOpacity(.31),
        ),
        borderRadius: BorderRadius.circular(10)),
    child: IconButton(
        onPressed: onPressed,
        icon: const ImageIcon(
          AssetImage(AppAssets.back),
          color: AppColor.textColor,
        )),
  );
}
