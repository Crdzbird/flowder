import 'package:file_downloader/application/downloader_provider/downloader_provider.dart';
import 'package:file_downloader/application/internet_connection/internet_connection_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _internetConnectionProvider = Provider.autoDispose(
  (ref) => ref.watch(internetConnectionProvider),
);

final _downloaderProvider = Provider.autoDispose(
  (ref) => ref.watch(downloaderProvider),
);

class MainScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final internetConnectionState = watch(_internetConnectionProvider);
    final downloaderState = watch(_downloaderProvider);
    final downloaderAction = context.read(downloaderProvider.notifier);
    if (!internetConnectionState.hasInternet && downloaderState.isLoading) {
      downloaderAction.pauseDownload();
    }
    if (internetConnectionState.hasInternet && downloaderState.isPaused) {
      downloaderAction.continueDownload();
    }
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('TERI TERI'),
          Text('Audio'),
          ElevatedButton(
            onPressed: () async => downloaderAction.initDownload('200MB', 'zip',
                'http://ipv4.download.thinkbroadband.com/200MB.zip'),
            child: Text('DOWNLOAD'),
          ),
        ],
      ),
    );
  }
}
