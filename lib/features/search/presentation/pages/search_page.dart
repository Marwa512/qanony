import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qanony/core/utils/app_router.dart';
import 'package:qanony/core/utils/assets.dart';
import 'package:qanony/core/utils/colors.dart';
import 'package:qanony/features/search/presentation/bloc/search_bloc.dart';
import 'package:qanony/features/search/presentation/pages/widgets/container_divider.dart';
import 'package:qanony/features/search/presentation/pages/widgets/search_button.dart';
import 'package:qanony/features/search/presentation/pages/widgets/text_widget.dart';
import 'package:qanony/features/search/presentation/pages/widgets/textfield_widget.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      body: BlocConsumer<SearchBloc, SearchState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Stack(
              children: [
                Container(
                  color: Colors.grey,
                  height: height,
                  width: width,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: height * .42,
                    width: width * .9,
                    decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 37, horizontal: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextWidget(
                                text: tr("welcome"),
                                color: AppColor.textColor,
                                weight: FontWeight.w700,
                                size: 18,
                              ),
                              TextWidget(
                                text: tr("alyaa"),
                                color: AppColor.headingColor,
                                weight: FontWeight.w700,
                                size: 18,
                              ),
                            ],
                          ),
                          TextWidget(
                            text: tr("searchText"),
                            color: AppColor.secondaryColor,
                            weight: FontWeight.w400,
                            size: 14,
                            align: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          TextFieldWidget(
                            controller: textEditingController,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          BlocConsumer<SearchBloc, SearchState>(
                              listener: (context, state) {
                            if (state is SearchSuccessState) {
                              context.router
                                  .navigate(const SearchResultRoute());
                            }
                          }, builder: (context, state) {
                            return SearchButtonWidget(
                              onPressed: () async {
                                context.read<SearchBloc>().add(
                                      Search(
                                          name: textEditingController.text,
                                          page: 0),
                                    );
                              },
                              iconHeight: 23,
                              iconWidth: 23,
                              height: 40,
                              width: 138,
                              text: "search",
                              gradient: AppColor.gradientRed,
                              icon: AppAssets.search,
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
                if (context.read<SearchBloc>().isDropDown)
                  Positioned(
                    top: 460,
                    left: 50,
                    child: Container(
                      height: 115,
                      width: 120,
                      decoration: BoxDecoration(
                        color: AppColor.whiteColor,
                        border: Border.all(
                            color: AppColor.borderColor.withOpacity(.13)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListView.separated(
                          padding: const EdgeInsets.all(10),
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return DropDownMenu(
                              index: index,
                              onPressed: () {
                                context.read<SearchBloc>().add(
                                    SelectConsultTypeEvent(
                                        value: context
                                            .read<SearchBloc>()
                                            .items[index]));
                              },
                            );
                          },
                          separatorBuilder: (context, index) {
                            return ContainerDivider(
                                width: double.infinity,
                                height: 1,
                                color: AppColor.borderColor.withOpacity(.13));
                          },
                          itemCount: context.read<SearchBloc>().items.length),
                    ),
                  ),
              ],
            );
          }),
    );
  }
}

class DropDownMenu extends StatelessWidget {
  const DropDownMenu({
    super.key,
    required this.index,
    required this.onPressed,
  });
  final int index;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 110,
      child: TextButton(
        onPressed: onPressed,
        child: TextWidget(
            size: 12,
            text: context.read<SearchBloc>().items[index],
            color: AppColor.textColor),
      ),
    );
  }
}
