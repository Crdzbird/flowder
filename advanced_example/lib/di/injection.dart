import 'package:dio/dio.dart';
import 'package:file_downloader/di/injection.config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final locator = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
void configure() => $initGetIt(locator);

@module
abstract class RegisterModule {
  @factory
  Dio get client {
    final options = BaseOptions(
      sendTimeout: 60,
    );
    return Dio(options);
  }
}
