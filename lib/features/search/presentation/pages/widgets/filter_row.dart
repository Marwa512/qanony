import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qanony/core/utils/assets.dart';
import 'package:qanony/core/utils/colors.dart';
import 'package:qanony/features/search/presentation/bloc/search_bloc.dart';
import 'package:qanony/features/search/presentation/pages/widgets/container_divider.dart';
import 'package:qanony/features/search/presentation/pages/widgets/text_widget.dart';

class FilterRow extends StatelessWidget {
  const FilterRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        ContainerDivider(
            width: width,
            height: 1,
            color: AppColor.secondaryColor.withOpacity(.13)),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 55,
              width: 109,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.borderColor.withOpacity(.31),
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextWidget(text: tr("price"), color: AppColor.secondaryColor),
                  TextWidget(
                    text:
                        "من ${context.read<SearchBloc>().filterEntity.price.start.ceil()} الي ${context.read<SearchBloc>().filterEntity.price.end.ceil()}",
                    weight: FontWeight.w700,
                    color: AppColor.textColor,
                    size: 12,
                  ),
                ],
              ),
            ),
            Container(
              height: 55,
              width: 109,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.borderColor.withOpacity(.31),
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextWidget(text: tr("rate"), color: AppColor.secondaryColor),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ImageIcon(
                        size: 10,
                        AssetImage(
                          AppAssets.path,
                        ),
                        color: AppColor.textColor,
                      ),
                      ImageIcon(
                        size: 10,
                        AssetImage(
                          AppAssets.path,
                        ),
                        color: AppColor.textColor,
                      ),
                      ImageIcon(
                        size: 10,
                        AssetImage(
                          AppAssets.path,
                        ),
                        color: AppColor.textColor,
                      ),
                      ImageIcon(
                        size: 10,
                        AssetImage(
                          AppAssets.path,
                        ),
                        color: AppColor.textColor,
                      ),
                      ImageIcon(
                        size: 10,
                        AssetImage(
                          AppAssets.path,
                        ),
                        color: AppColor.textColor,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 55,
              width: 109,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.borderColor.withOpacity(.31),
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextWidget(
                      text: tr("address"), color: AppColor.secondaryColor),
                  TextWidget(
                    text: context.read<SearchBloc>().filterEntity.city,
                    color: AppColor.textColor,
                    size: 12,
                    weight: FontWeight.w700,
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
