import 'package:auto_route/auto_route.dart';
import 'package:file_downloader/presentation/screens/main_screen.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute<void>(
      initial: true,
      name: 'downloader',
      page: MainScreen,
    ),
  ],
  replaceInRouteName: 'Page,Route,Screen',
)
class $AppRouter {}
