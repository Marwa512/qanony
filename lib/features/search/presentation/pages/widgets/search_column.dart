import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:qanony/core/utils/assets.dart';
import 'package:qanony/core/utils/colors.dart';
import 'package:qanony/features/search/data/model/search_model/datum.dart';
import 'package:qanony/features/search/presentation/pages/widgets/text_widget.dart';
import 'package:qanony/features/search/presentation/pages/widgets/container_divider.dart';
import 'package:qanony/features/search/presentation/pages/widgets/icon_text_row.dart';

class SearchResultColumn extends StatelessWidget {
  const SearchResultColumn({
    super.key,
    required this.searchModel,
  });
  final Datum searchModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const ImageIcon(
              AssetImage(AppAssets.path),
              color: AppColor.borderColor,
              size: 18,
            ),
            const SizedBox(
              width: 5,
            ),
            TextWidget(
              text: "${searchModel.ratesNo}",
              color: AppColor.redColor,
              weight: FontWeight.w700,
              size: 10,
              fontFamily: "RedHat",
            ),
            const SizedBox(width: 5),
            const ContainerDivider(
              width: 2,
              height: 15,
              color: AppColor.secondaryColor,
            ),
            const SizedBox(width: 5),
            const ImageIcon(
              AssetImage(AppAssets.dollarSign),
              color: AppColor.borderColor,
              size: 18,
            ),
            const SizedBox(
              width: 5,
            ),
            TextWidget(
              text: "${searchModel.consultCost} ",
              color: AppColor.redColor,
              weight: FontWeight.w700,
              size: 10,
            ),
            TextWidget(
              text: tr("priceFor"),
              color: AppColor.secondaryColor,
              fontFamily: "Noor",
              size: 8,
            ),
          ],
        ),
        TextWidget(
          text: "${searchModel.name}",
          color: AppColor.textColor,
          size: 15,
          weight: FontWeight.w400,
        ),
        const SizedBox(
          height: 5,
        ),
        const ContainerDivider(
          color: AppColor.secondaryColor,
          height: 1,
          width: 200,
        ),
        IconTextRow(
          icon: AppAssets.briefCase,
          text: "${searchModel.consultantAcademic}",
        ),
        IconTextRow(
          icon: AppAssets.note,
          text: "${searchModel.consultingTypes?.first.title}",
        ),
        IconTextRow(
          icon: AppAssets.location,
          text: "${searchModel.city?.name}",
        ),
      ],
    );
  }
}
