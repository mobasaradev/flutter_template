import 'package:dartz/dartz.dart';
import 'package:flutter_template/core/network/api_exception.dart';

import '../../../../../core/network/network_handler.dart';
import '../model/login_model.dart';
import 'login_data_source.dart';

class LoginDataSourceImpl implements LoginDataSource {
  final NetworkHandler networkHandler;

  LoginDataSourceImpl({required this.networkHandler});

  @override
  Future<Either<ApiException, LoginModel>> login(
    String email,
    String password,
  ) async {
    final body = {'email': email, 'password': password};

    final result = await networkHandler.post(
      uri: Uri.parse('/auth/login'),
      body: body,
      parser: (json) => LoginModel.fromJson(json),
    );

    return result.fold((failure) => Left(failure), (responseBody) {
      try {
        return Right(responseBody);
      } catch (e) {
        return Left(ServerFailure('Failed to parse login response: $e'));
      }
    });
  }
}
