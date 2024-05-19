import 'package:flutter/material.dart';
import 'package:point_of_sale/widgets/custom_textfield.dart';

class CashInHand extends StatelessWidget {
  const CashInHand({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cash in Hand"),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: CustomTextField(hinttext: "All Amount Cash"),
    );
  }
}
