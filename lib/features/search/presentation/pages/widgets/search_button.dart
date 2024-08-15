import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:qanony/core/utils/colors.dart';
import 'package:qanony/features/search/presentation/pages/widgets/text_widget.dart';

class SearchButtonWidget extends StatelessWidget {
  const SearchButtonWidget({
    super.key,
    this.gradient,
    required this.text,
    this.icon,
    required this.height,
    required this.width,
    this.iconHeight,
    this.iconWidth,
    required this.onPressed,
  });
  final List<Color>? gradient;
  final String text;
  final String? icon;
  final double height;
  final double width;
  final double? iconHeight;
  final double? iconWidth;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradient ?? [],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
              text: tr(text),
              color: AppColor.whiteColor,
              size: 14,
            ),
            const SizedBox(
              width: 5,
            ),
            icon != null
                ? Image.asset(
                    icon!,
                    height: iconHeight,
                    width: iconWidth,
                  )
                : const Text(""),
          ],
        ),
      ),
    );
  }
}
