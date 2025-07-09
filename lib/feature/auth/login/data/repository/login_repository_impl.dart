import 'package:dartz/dartz.dart';
import 'package:flutter_template/core/network/api_exception.dart';

import '../../domain/entity/login_entity.dart';
import '../../domain/repository/login_repository.dart';
import '../data_source/login_data_source.dart';
import '../model/login_model.dart';

// class LoginRepositoryImpl implements LoginRepository {
//   final LoginDataSource dataSource;

//   LoginRepositoryImpl(this.dataSource);

//   @override
//   Future<LoginEntity> login(String email, String password) {
//     return dataSource.login(email, password);
//   }
// }

class LoginRepositoryImpl implements LoginRepository {
  final LoginDataSource loginDataSource; // Inject data source

  LoginRepositoryImpl({required this.loginDataSource});

  @override
  Future<Either<ApiException, LoginEntity>> login(
    String email,
    String password,
  ) async {
    final result = await loginDataSource.login(email, password);

    return result.fold(
      (failure) => Left(failure),
      (loginModel) => Right(loginModel.toEntity()),
    );
  }
}

// You might need an extension or method in LoginModel to convert to LoginEntity
extension LoginModelExtension on LoginModel {
  LoginEntity toEntity() {
    return LoginEntity(token: token, email: email);
  }
}
