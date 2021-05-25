import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:file_downloader/generated/l10n.dart';
import 'package:file_downloader/presentation/core/router/router.gr.dart';

final router = AppRouter();

class FileDownloaderMain extends StatelessWidget {
  const FileDownloaderMain();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => const _FileDownloaderMain(),
      designSize: const Size(750, 1334),
    );
  }
}

class _FileDownloaderMain extends ConsumerWidget {
  const _FileDownloaderMain();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return MaterialApp.router(
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: router.delegate(
        navigatorObservers: () => [
          BotToastNavigatorObserver(),
        ],
      ),
      builder: BotToastInit(),
      onGenerateTitle: (context) => S.of(context).appTitle,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
    );
  }
}
