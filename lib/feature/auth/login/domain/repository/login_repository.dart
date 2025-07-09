import 'package:dartz/dartz.dart';

import '../../../../../core/network/api_exception.dart';
import '../entity/login_entity.dart';

abstract class LoginRepository {
  Future<Either<ApiException, LoginEntity>> login(
    String email,
    String password,
  );
}
