// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../application/downloader_provider/downloader_provider.dart' as _i4;
import '../application/internet_connection/internet_connection_provider.dart'
    as _i5;
import 'injection.dart' as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.Dio>(() => registerModule.client);
  gh.factory<_i4.DownloaderNotifier>(() => _i4.DownloaderNotifier());
  gh.factory<_i5.InternetConnectionNotifier>(
      () => _i5.InternetConnectionNotifier());
  return get;
}

class _$RegisterModule extends _i6.RegisterModule {}
