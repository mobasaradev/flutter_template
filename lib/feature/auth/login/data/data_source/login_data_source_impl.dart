import '../model/login_model.dart';
import 'login_data_source.dart';

class LoginDataSourceImpl implements LoginDataSource {
  @override
  Future<LoginModel> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));
    return LoginModel(email: email, token: "mock_token_123");
  }
}
