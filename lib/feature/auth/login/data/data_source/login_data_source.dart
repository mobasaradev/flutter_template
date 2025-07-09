import '../model/login_model.dart';

abstract class LoginDataSource {
  Future<LoginModel> login(String email, String password);
}
