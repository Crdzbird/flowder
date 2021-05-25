import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:file_downloader/application/internet_connection/internet_connection_state.dart';
import 'package:file_downloader/di/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

final internetConnectionProvider = StateNotifierProvider.autoDispose<InternetConnectionNotifier, InternetConnectionState>(
  (ref) => locator<InternetConnectionNotifier>(),
);

@injectable
class InternetConnectionNotifier
    extends StateNotifier<InternetConnectionState> {
  InternetConnectionNotifier() : super(InternetConnectionState.initial()) {
    checkConnection();
  }

  void checkConnection() {
    Connectivity().onConnectivityChanged.listen(
      (event) {
        switch (event) {
          case ConnectivityResult.mobile:
          case ConnectivityResult.wifi:
            state = state.copyWith(hasInternet: true, isLoading: false);
            break;
          case ConnectivityResult.none:
          default:
            state = state.copyWith(hasInternet: false, isLoading: false);
            break;
        }
      },
    );
  }
}
