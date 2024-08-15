import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qanony/core/utils/app_router.dart';
import 'package:qanony/core/utils/assets.dart';
import 'package:qanony/features/search/presentation/bloc/search_bloc.dart';
import 'package:qanony/features/search/presentation/pages/widgets/search_button.dart';
import 'package:qanony/features/search/presentation/pages/widgets/text_widget.dart';
import 'package:qanony/features/search/presentation/pages/widgets/back_button.dart';
import 'package:qanony/features/search/presentation/pages/widgets/container_divider.dart';

import '../../../../../core/utils/colors.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({super.key, required this.height});
  final double height;

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return BlocConsumer<SearchBloc, SearchState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Dialog(
            insetPadding: const EdgeInsets.all(9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 700,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        TextWidget(
                          text: tr("searchDialog"),
                          color: AppColor.textColor,
                          size: 18,
                        ),
                        const Spacer(),
                        backButton(
                          onPressed: () {
                            context.router
                                .popAndPush(const SearchResultRoute());
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ContainerDivider(
                      width: double.infinity,
                      height: 1,
                      color: AppColor.borderColor.withOpacity(.13),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextWidget(
                        text: tr("byPrice"), color: AppColor.borderColor),
                    SliderTheme(
                      data: const SliderThemeData(
                        trackHeight: 4,
                        rangeThumbShape: RoundRangeSliderThumbShape(
                            elevation: 1, enabledThumbRadius: 8),
                        thumbColor: AppColor.borderColor,
                        activeTrackColor: AppColor.textColor,
                        inactiveTrackColor: AppColor.secondaryColor,
                      ),
                      child: RangeSlider(
                        values: context.read<SearchBloc>().filterEntity.price,
                        max: 1000,
                        onChanged: (value) {
                          context
                              .read<SearchBloc>()
                              .add(SelectSliderValueEvent(values: value));
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 25,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColor.borderColor.withOpacity(.35)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: TextWidget(
                                size: 12,
                                weight: FontWeight.w700,
                                text:
                                    " ${context.read<SearchBloc>().filterEntity.price.start.ceil()}",
                                color: AppColor.textColor),
                          ),
                        ),
                        const SizedBox(
                          width: 120,
                        ),
                        Container(
                          height: 25,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColor.borderColor.withOpacity(.35)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: TextWidget(
                                size: 12,
                                weight: FontWeight.w700,
                                text:
                                    " ${context.read<SearchBloc>().filterEntity.price.end.ceil()}",
                                color: AppColor.textColor),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ContainerDivider(
                      width: double.infinity,
                      height: 1,
                      color: AppColor.borderColor.withOpacity(.13),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextWidget(text: tr("byRate"), color: AppColor.borderColor),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 20,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => const Icon(
                                Icons.star_rounded,
                                size: 30,
                                color: AppColor.textColor,
                              ),
                          separatorBuilder: (context, index) => const SizedBox(
                                width: 20,
                              ),
                          itemCount: 5),
                    ),
                    const SizedBox(height: 30),
                    ContainerDivider(
                      width: double.infinity,
                      height: 1,
                      color: AppColor.borderColor.withOpacity(.13),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextWidget(
                        text: tr("address"), color: AppColor.borderColor),
                    const SizedBox(
                      height: 20,
                    ),
                    DropdownMenu(
                        trailingIcon: const ImageIcon(
                          AssetImage(AppAssets.downArrow),
                          color: AppColor.textColor,
                          size: 18,
                        ),
                        textStyle: const TextStyle(color: AppColor.textColor),
                        width: width * 0.9,
                        inputDecorationTheme: InputDecorationTheme(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    AppColor.secondaryColor.withOpacity(.13)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                        dropdownMenuEntries: const [
                          DropdownMenuEntry(
                            value: "1",
                            label: "القاهرة",
                            labelWidget: TextWidget(
                                text: "القاهره", color: AppColor.textColor),
                          ),
                        ]),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BlocConsumer<SearchBloc, SearchState>(
                            listener: (context, state) {
                          if (state is FilterSuccessState ||
                              state is ResetSuccesState) {
                            context.router.push(const SearchResultRoute());
                          }
                        }, builder: (context, state) {
                          return SearchButtonWidget(
                            onPressed: () {
                              context
                                  .read<SearchBloc>()
                                  .add(const FilterEvent());
                            },
                            height: 50,
                            width: 185,
                            text: "apply",
                            gradient: AppColor.gradientRed,
                          );
                        }),
                        SearchButtonWidget(
                          height: 50,
                          onPressed: () {
                            context.read<SearchBloc>().add(const ResetEvent());
                          },
                          width: 123,
                          text: "reset",
                          iconHeight: 18,
                          iconWidth: 18,
                          icon: AppAssets.vector,
                          gradient: const [
                            AppColor.textColor,
                            AppColor.textColor
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
