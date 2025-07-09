import 'package:dartz/dartz.dart';

import '../../../../../core/network/api_exception.dart';
import '../entity/login_entity.dart';
import '../repository/login_repository.dart';

class LoginUseCase {
  LoginUseCase(this.repository);

  final LoginRepository repository;

  Future<Either<ApiException, LoginEntity>> execute(
    String email,
    String password,
  ) {
    return repository.login(email, password);
  }
}
