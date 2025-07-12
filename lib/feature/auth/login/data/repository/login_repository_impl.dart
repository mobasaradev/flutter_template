import '../../domain/entity/login_entity.dart';
import '../../domain/repository/login_repository.dart';
import '../data_source/login_data_source.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginDataSource loginDataSource; 

  LoginRepositoryImpl({required this.loginDataSource});

  @override
  Future<LoginEntity> login(String email, String password) async {
    return loginDataSource.login(email, password);
  }
}
