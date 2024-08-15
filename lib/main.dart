import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qanony/core/injection/service_locator.dart';
import 'package:qanony/core/utils/app_router.dart';
import 'package:qanony/core/utils/bloc_observer.dart';
import 'package:qanony/core/utils/theme_data.dart';
import 'package:qanony/features/search/data/repositories/search_repo_imp.dart';
import 'package:qanony/features/search/presentation/bloc/search_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await EasyLocalization.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale("ar")],
      path: 'assets/translation',
      fallbackLocale: const Locale('ar'),
      startLocale: const Locale("ar"),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return BlocProvider(
        create: (context) => SearchBloc(getIt<SearchRepoImp>()),
        child: MaterialApp.router(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            theme: AppTheme.appTheme,
            routerConfig: appRouter.config()));
  }
}
