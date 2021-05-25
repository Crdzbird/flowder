import 'dart:io';

import 'package:file_downloader/application/downloader_provider/downloader_state.dart';
import 'package:flowder/flowder.dart';
import 'package:file_downloader/di/injection.dart';
import 'package:file_downloader/presentation/file_downloader_main.dart';
import 'package:file_downloader/presentation/widgets/custom_toast/custom_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:file_downloader/generated/l10n.dart';

final downloaderProvider =
    StateNotifierProvider.autoDispose<DownloaderNotifier, DownloaderState>(
  (ref) => locator<DownloaderNotifier>(),
);

@injectable
class DownloaderNotifier extends StateNotifier<DownloaderState> {
  late final String path;
  late final BuildContext context;
  DownloaderUtils? options;
  DownloaderCore? downloaderCore;

  DownloaderNotifier() : super(DownloaderState.initial()) {
    context = router.navigatorKey.currentContext!;
    _setPath();
  }

  void _setPath() async {
    path = (await getExternalStorageDirectory())!.path;
  }

  Future<void> initDownload(
      String fileName, String extension, String url) async {
    options = DownloaderUtils(
      progress: ProgressImplementation(),
      file: File('$path/$fileName.$extension'),
      onDone: () {
        CustomToast.show(
            title: S.of(context).downloaderTitle,
            body: S.of(context).downloadCompleted,
            duration: Duration(seconds: 1),
            icon: Icon(Icons.download_done_rounded));
        state = DownloaderState.done();
      },
      progressCallback: (current, total) {
        final progress = (current / total) * 100;
        print('Downloading: $progress');
        state = DownloaderState.loading();
      },
    );
    downloaderCore ??= await Flowder.download(url, options!);
    CustomToast.show(
        title: S.of(context).downloaderTitle,
        body: S.of(context).downloadStarted,
        duration: Duration(seconds: 1),
        icon: Icon(Icons.downloading_rounded));
  }

  Future<void> pauseDownload() async {
    if (!isDownloading) return;
    await downloaderCore!.pause();
    state = DownloaderState.paused();
    CustomToast.show(
        title: S.of(context).downloaderTitle,
        body: S.of(context).downloaderPaused,
        duration: Duration(seconds: 1),
        icon: Icon(Icons.pause_circle_filled));
  }

  Future<void> continueDownload() async {
    await downloaderCore!.resume();
    state = DownloaderState.loading();
    CustomToast.show(
        title: S.of(context).downloaderTitle,
        body: S.of(context).downloadResumed,
        duration: Duration(seconds: 1),
        icon: Icon(Icons.downloading_rounded));
  }
}
