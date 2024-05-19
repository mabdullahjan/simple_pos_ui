import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:point_of_sale/screens/dashboard_screen.dart';
import 'package:point_of_sale/screens/signup_screen.dart';
import 'package:point_of_sale/widgets/custom_textfield.dart';
import 'package:point_of_sale/controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    final controller = Get.put(HomeController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 90.0),
            child: Form(
              key: controller.formKey,
              child: Column(
                children: [
                  const GFImageOverlay(
                    image: AssetImage('assets/shop.png'),
                    height: 200,
                    width: 150,
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.darken),
                  ),
                  CustomTextField(
                    obscuretext: false,
                    controller: emailController,
                    hinttext: 'Email',
                    labletext: "Email",
                    icon: const Icon(Icons.email_outlined),
                    validator: (email) => controller.validateEmail(email),
                  ),
                  CustomTextField(
                    controller: passwordController,
                    obscuretext: false,
                    labletext: "Password",
                    hinttext: 'Password',
                    icon: const Icon(Icons.lock_open),
                    validator: (password) =>
                        controller.validatePassword(password),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: GFButton(
                      onPressed: () {
                        controller.CheckEmail();
                        if (emailController.text == "admin@gmail.com" &&
                            passwordController.text == "123456") {
                          Get.to(DashboardScreen());
                        }
                        return;
                      },
                      shape: GFButtonShape.pills,
                      elevation: 10,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: GFColors.PRIMARY,
                      size: 60,
                      hoverColor: GFColors.FOCUS,
                      focusColor: GFColors.SECONDARY,
                      icon: Icon(
                        Icons.login_outlined,
                        size: 25,
                        color: Colors.white,
                      ),
                      fullWidthButton: true,
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 18, fontFamily: 'Jersey'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Divider(
                    height: 2,
                    endIndent: 60,
                    indent: 60,
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(fontSize: 19, fontFamily: 'Jersey'),
                      ),
                      GestureDetector(
                        child: const Text(
                          'SignUp',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Get.to(const SignUpScreen());
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
