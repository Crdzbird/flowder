/// Class used to set/get the progress of the download
abstract class ProgressInterface {
  /// Retrieve the progress of the download from a specific `url`
  Future<int> getProgress(String url);

  /// Set the progress of the download from a specific `url`
  Future<void> setProgress(String url, int received);

  /// Remove any progress.
  Future<void> resetProgress(String url) async {
    await setProgress(url, 0);
  }
}
