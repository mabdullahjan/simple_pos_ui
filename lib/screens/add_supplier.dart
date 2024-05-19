import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getwidget/getwidget.dart';
import 'package:point_of_sale/widgets/custom_textfield.dart';

class AddSupplier extends StatelessWidget {
  const AddSupplier({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Supplier'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomTextField(
              hinttext: 'Name',
              icon: Icon(Icons.person),
            ),
            CustomTextField(
              hinttext: 'Phone',
              icon: const Icon(Icons.phone),
              inputformatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardtype: TextInputType.number,
            ),
            const CustomTextField(
              hinttext: 'Email',
              icon: Icon(Icons.email_outlined),
            ),
            const CustomTextField(
              hinttext: 'Address',
            ),
            const CustomTextField(
              hinttext: 'Create Password',
              icon: Icon(Icons.lock_outline),
              obscuretext: true,
            ),
            const CustomTextField(
              hinttext: 'Confirm Password',
              icon: Icon(Icons.lock_outline),
              obscuretext: true,
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
                  'Add Supplier',
                  style: TextStyle(fontSize: 18, fontFamily: 'Jersey'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
