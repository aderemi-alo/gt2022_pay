import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:gt2022/controllers/login_controllers.dart';
import 'package:gt2022/controllers/register_controller.dart';
import 'package:gt2022/screens/login.dart';
import 'package:gt2022/screens/register.dart';

// to show a UI if it is either Login or Register
class AuthScreen extends StatefulWidget {
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  RegisterController registerController = Get.put(RegisterController());

  LoginController loginController = Get.put(LoginController());

  var isLogin = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Obx(() => Column(
            children: [isLogin.value ? loginWidget() : registerWidget()],
          )),
    ));
  }

  Widget registerWidget() {
    return RegistrationScreen();
  }

  Widget loginWidget() {
    return LoginScreen();
  }
}
