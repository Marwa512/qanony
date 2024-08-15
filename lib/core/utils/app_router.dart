import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:qanony/features/search/data/model/search_model/search_model.dart';

import '../../features/search/presentation/pages/search_page.dart';
import '../../features/search/presentation/pages/search_result.dart';

part 'app_router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SearchRoute.page, initial: true),
        AutoRoute(page: SearchResultRoute.page),
      ];
}
