import 'package:dartz/dartz.dart';

import '../../../../../core/network/api_exception.dart';
import '../model/login_model.dart';

abstract class LoginDataSource {
  Future<LoginModel> login(String email, String password);
}
