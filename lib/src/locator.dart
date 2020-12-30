import 'package:butterfly/src/core/services/navigation_service.dart';
import 'package:butterfly/src/core/view_models/dummy.dart';
import 'package:butterfly/src/core/view_models/root.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  // MARK: - Persistance

  // MARK: - Services
  locator.registerLazySingleton(() => NavigationService());

  // MARK: - ViewModels
  locator.registerFactory(() => RootViewModel());
  locator.registerLazySingleton(() => DummyViewModel());
}
