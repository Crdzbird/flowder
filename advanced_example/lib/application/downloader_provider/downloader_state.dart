import 'package:freezed_annotation/freezed_annotation.dart';

part 'downloader_state.freezed.dart';

@freezed
class DownloaderState with _$DownloaderState {
  const factory DownloaderState({
    required bool isComplete,
    required bool isLoading,
    required bool isPaused,
  }) = _DownloaderState;

  factory DownloaderState.initial() => DownloaderState(
        isComplete: false,
        isLoading: false,
        isPaused: false,
      );

  factory DownloaderState.paused() => DownloaderState(
        isComplete: false,
        isLoading: false,
        isPaused: true,
      );

  factory DownloaderState.loading() => DownloaderState(
        isComplete: false,
        isLoading: true,
        isPaused: false,
      );

  factory DownloaderState.done() => DownloaderState(
        isComplete: true,
        isLoading: false,
        isPaused: false,
      );
}
