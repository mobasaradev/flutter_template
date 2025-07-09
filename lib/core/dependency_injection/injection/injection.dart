import 'package:get_it/get_it.dart';

import '../../../feature/auth/login/data/data_source/login_data_source.dart';
import '../../../feature/auth/login/data/data_source/login_data_source_impl.dart';
import '../../../feature/auth/login/data/repository/login_repository_impl.dart';
import '../../../feature/auth/login/domain/repository/login_repository.dart';
import '../../../feature/auth/login/domain/use_case/login_use_case.dart';

final getIt = GetIt.instance;

void setupInjection() {
  // DataSource
  getIt.registerLazySingleton<LoginDataSource>(
    () => LoginDataSourceImpl(networkHandler: getIt()),
  );

  // Repository
  getIt.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImpl(loginDataSource: getIt()),
  );

  // UseCase
  getIt.registerLazySingleton(() => LoginUseCase(getIt()));
}
