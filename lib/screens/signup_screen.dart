import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/getwidget.dart';
import 'package:point_of_sale/screens/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'SignUp',
          style: TextStyle(
              color: Colors.black, fontFamily: "Jersey", fontSize: 35),
        ),
        backgroundColor: Colors.blueAccent,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 29,
            ),
            const Padding(
              padding: EdgeInsets.all(13.0),
              child: TextField(
                decoration: InputDecoration(
                  focusColor: Colors.blue,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  hintText: 'Name',
                  prefixIcon: Icon(Icons.person),
                  prefixIconColor: Colors.indigo,
                  label: Text("Name"),
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(13.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  focusColor: Colors.blue,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email_outlined),
                  prefixIconColor: Colors.indigo,
                  label: Text("Email"),
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(13.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  focusColor: Colors.blue,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.password_outlined),
                  prefixIconColor: Colors.indigo,
                  label: Text(" Password"),
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(13.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  focusColor: Colors.blue,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  hintText: 'Confirm Password',
                  prefixIcon: Icon(Icons.password_outlined),
                  prefixIconColor: Colors.indigo,
                  label: Text("Confirm Password"),
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(
                  filled: true,
                  focusColor: Colors.blue,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  hintText: 'Phone Number',
                  prefixIcon: Icon(Icons.phone),
                  prefixIconColor: Colors.indigo,
                  label: Text("Phone Number"),
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: GFButton(
                onPressed: () {},
                shape: GFButtonShape.pills,
                color: GFColors.PRIMARY,
                size: 60,
                hoverColor: GFColors.FOCUS,
                focusColor: GFColors.SECONDARY,
                fullWidthButton: true,
                child: const Text(
                  'SignUp',
                  style: TextStyle(fontSize: 18, fontFamily: 'Jersey'),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Divider(
              indent: 50,
              endIndent: 50,
              thickness: 1,
              color: Colors.indigo,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 19, fontFamily: 'Jersey'),
                ),
                GestureDetector(
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Jersey',
                        fontSize: 19),
                  ),
                  onTap: () {
                    Get.to(const LoginScreen());
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
