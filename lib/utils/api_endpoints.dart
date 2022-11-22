class ApiEndPoints {
  static final String baseUrl = 'https://restapi.adequateshop.com/api/';
  static _AuthEndPoints authEndPoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String registerEmail = 'authaccount/register';
  final String loginEmail = 'authaccount/login';
}
