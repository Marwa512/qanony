import 'package:flutter/material.dart';
import 'package:qanony/core/utils/assets.dart';
import 'package:qanony/core/utils/remote_config.dart';
import 'package:qanony/features/search/data/model/search_model/datum.dart';
import 'package:qanony/features/search/data/model/search_model/search_model.dart';
import 'package:qanony/features/search/presentation/pages/widgets/search_column.dart';

import '../../../../../core/utils/colors.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({
    super.key,
    required this.searchModel,
  });
  final Datum searchModel;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * .22,
      width: width / 2,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.03),
                spreadRadius: 3,
                blurRadius: 40,
                offset: const Offset(0, 25)),
          ]),
      child: SizedBox(
        //overflow
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    width: 100,
                    height: height * .25,
                    "${RemoteConfig.url}${searchModel.image}",
                    scale: 4,
                    fit: BoxFit.cover,
                  ),
                ),
                CircleAvatar(
                  radius: 11,
                  child: Image.asset(AppAssets.ellipse),
                ),
                Positioned(
                  right: 10,
                  top: 150,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF99262D),
                          Color(0xFFF13945),
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const ImageIcon(
                        AssetImage(AppAssets.arrowLeft),
                        color: AppColor.whiteColor,
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 5,
            ),
            SearchResultColumn(searchModel: searchModel),
            CircleAvatar(
              backgroundColor: AppColor.redColor,
              child: Image.asset(
                AppAssets.callCalling,
                scale: 4,
              ),
            )
          ],
        ),
      ),
    );
  }
}
