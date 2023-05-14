import 'package:get_it/get_it.dart';
import 'package:myffin_experience_flutter/data/remote/misc_remote_repository.dart';
import 'package:myffin_experience_flutter/domain/repositories/misc/misc_repository.dart';
import 'package:sal/sal.dart';

final _locator = GetIt.instance;

void initDependencyInjection() {
  _initNetworkDependencies();
  _initRepositoryDependencies();
}

void _initNetworkDependencies() {
  const baseUrl = "http://192.168.1.148/myffin.api/v1.0";
  _locator
      .registerLazySingleton<ApiNetworkClientConfiguration>(() => const ApiNetworkClientDefaultConfiguration(baseUrl));
  _locator.registerLazySingleton<MiscApiClient>(() => MiscApiNetworkClient(_locator<ApiNetworkClientConfiguration>()));
}

void _initRepositoryDependencies() {
  _locator.registerLazySingleton<MiscRepository>(() => MiscRemoteRepository());
}

T resolveDependency<T extends Object>() {
  return _locator<T>();
}
