import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qanony/core/utils/assets.dart';
import 'package:qanony/core/utils/colors.dart';
import 'package:qanony/features/search/data/model/search_model/search_model.dart';
import 'package:qanony/features/search/presentation/bloc/search_bloc.dart';
import 'package:qanony/features/search/presentation/pages/widgets/filter_row.dart';
import 'package:qanony/features/search/presentation/pages/widgets/text_widget.dart';
import 'package:qanony/features/search/presentation/pages/widgets/back_button.dart';
import 'package:qanony/features/search/presentation/pages/widgets/search_card.dart';
import 'package:qanony/features/search/presentation/pages/widgets/search_filter.dart';

@RoutePage()
class SearchResultPage extends StatefulWidget {
  const SearchResultPage({
    super.key,
  });

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  late ScrollController _scrollController;

  int page = 1;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(onScroll);
  }

  void onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      print("onscroll");
      context.read<SearchBloc>().add(FetchMoreDataEvent(page: page));

      page++;
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        title: TextWidget(
          text: tr("searchResult"),
          color: AppColor.textColor,
          size: 20,
        ),
        centerTitle: true,
        actions: [
          backButton(
            onPressed: () {
              context.router.back();
            },
          ),
        ],
      ),
      body: BlocConsumer<SearchBloc, SearchState>(
          listener: (context, state) {},
          builder: (context, state) {
            return SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    if (context.read<SearchBloc>().isFilter) const FilterRow(),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return SearchCard(
                            searchModel: context
                                .read<SearchBloc>()
                                .searchDataModel[index],
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                              height: 40,
                            ),
                        itemCount:
                            context.read<SearchBloc>().searchDataModel.length),
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.textColor,
        ),
        child: BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
          return Stack(
            children: [
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return SearchFilter(height: height);
                      },
                    );
                  },
                  icon: const ImageIcon(
                    AssetImage(AppAssets.setting),
                    color: AppColor.borderColor,
                  )),
              if (context.read<SearchBloc>().isFilter)
                const CircleAvatar(
                  backgroundColor: AppColor.borderColor,
                  radius: 6,
                )
            ],
          );
        }),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
