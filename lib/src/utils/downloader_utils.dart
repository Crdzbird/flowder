import 'dart:io';
import 'dart:ui';

import 'package:dio/dio.dart' hide ProgressCallback;
import 'package:flowder/src/flowder.dart';
import 'package:flowder/src/progress/interfaces/progress_interface.dart';

/// Required for the initialization of [Flowder]
class DownloaderUtils {
  /// Notification Progress Channel Inteface
  /// Please use [ProgressImplementation] when called
  final ProgressInterface progress;

  /// Dio Client for HTTP Request
  Dio? client;

  /// Setup a location to store the downloaded file
  File file;

  /// should delete when cancel?
  bool deleteOnCancel;

  /// Function to be called when the download has finished.
  final VoidCallback onDone;

  /// Function with the current values of the download
  /// ```dart
  /// Function(int bytes, int total) => print('current byte: $bytes and total of bytes: $total');
  /// ```
  final ProgressCallback progressCallback;

  DownloaderUtils({
    required this.progress,
    this.client,
    required this.file,
    this.deleteOnCancel = false,
    required this.onDone,
    required this.progressCallback,
  });
}
