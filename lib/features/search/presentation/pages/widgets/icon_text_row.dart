import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import 'text_widget.dart';

class IconTextRow extends StatelessWidget {
  const IconTextRow({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ImageIcon(
          AssetImage(icon),
          color: AppColor.borderColor,
        ),
        TextWidget(text: text, color: AppColor.secondaryColor)
      ],
    );
  }
}
