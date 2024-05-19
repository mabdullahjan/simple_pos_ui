import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:point_of_sale/screens/add_customer_screen.dart';
import 'package:point_of_sale/screens/add_product.dart';
import 'package:point_of_sale/screens/add_supplier.dart';
import 'package:point_of_sale/screens/cash_in_hand.dart';
import 'package:point_of_sale/screens/cash_ledger.dart';
import 'package:point_of_sale/screens/dashboard_screen.dart';
import 'package:point_of_sale/screens/signup_screen.dart';
import 'package:point_of_sale/screens/splash_screen.dart';

import 'screens/sale_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
