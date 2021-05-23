import 'package:flowder/src/progress/interfaces/progress_interface.dart';

/// Class used to notify to the presentation layer the status of the download.
class ProgressImplementation extends ProgressInterface {
  ///Inner variable used to access the url attribute.
  final Map<String, int> _inner = {};

  /// Retrieve the progress of the download from a specific `url`
  /// if null then returns 0.
  @override
  Future<int> getProgress(String url) async {
    return _inner[url] ?? 0;
  }

  /// Set the progress of the download from a specific `url`
  @override
  Future<void> setProgress(String url, int received) async {
    _inner[url] = received;
  }
}
