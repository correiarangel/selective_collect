import '../../../../../core/shared/services/auth/i_auth_service.dart';
import '../domain/types/params_type.dart';
import '../infra/datasource/i_login_datasoure.dart';

class LoginDatasourse implements ILoginDatasouce {
  final IAuthService _authService;

  LoginDatasourse(IAuthService authService) : _authService = authService;

  @override
  Future<dynamic> loginDatasourse(LoginEmailParamsType params) async {
    final serviceParam = LoginWithEmailParam(
      email: params.email,
      password: params.password,
    );

    return await _authService.loginWithEmail(serviceParam);
  }

  @override
  Future logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
