import 'package:file_downloader/presentation/file_downloader_main.dart';
import 'package:flutter/material.dart';
import 'package:file_downloader/di/injection.dart' as di;
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.configure();
  runApp(
    const ProviderScope(
      child: FileDownloaderMain(),
    ),
  );
}
