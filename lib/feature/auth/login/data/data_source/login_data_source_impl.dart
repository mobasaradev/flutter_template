import '../../../../../core/network/network_handler.dart';
import '../model/login_model.dart';
import 'login_data_source.dart';

class LoginDataSourceImpl implements LoginDataSource {
  final NetworkHandler _networkHandler;

  LoginDataSourceImpl(this._networkHandler);

  @override
  Future<LoginModel> login(String email, String password) async {
    final uri = Uri.parse('https://your.api/login');

    final response = await _networkHandler.post<LoginModel>(
      uri,
      body: {'email': email, 'password': password},
      parser: (json) => LoginModel.fromJson(json),
    );

    return response.data;
  }
}
