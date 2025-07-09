import '../../domain/entity/login_entity.dart';
import '../../domain/repository/login_repository.dart';
import '../data_source/login_data_source.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginDataSource dataSource;

  LoginRepositoryImpl(this.dataSource);

  @override
  Future<LoginEntity> login(String email, String password) {
    return dataSource.login(email, password);
  }
}
