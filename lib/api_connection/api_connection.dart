class API
{
  static const hostConnect = "http://192.168.160.231/api_clothes_store";
  static const hostConnectUser = "$hostConnect/user";
  static const hostConnectAdmin = "$hostConnect/admin";
  //singUp-loging user
  static const validateEmail = "$hostConnectUser/validate_email.php";
  static const singUp = "$hostConnectUser/singup.php";
  static const login = "$hostConnectUser/login.php";

  //admin login
  static const adminLogin = "$hostConnectAdmin/login.php";

}
