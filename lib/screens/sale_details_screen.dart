import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_icon_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:point_of_sale/widgets/custom_textfield.dart';

class SaleDetails extends StatelessWidget {
  const SaleDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sales Details"),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(hinttext: "Item Code"),
            CustomTextField(hinttext: "Item Name"),
            CustomTextField(hinttext: "Quantity"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GFIconButton(
                    size: 30,
                    icon: Icon(Icons.add_circle_outline),
                    onPressed: () {}),
                SizedBox(
                  width: 10,
                ),
                GFIconButton(size: 30, icon: Icon(Icons.add), onPressed: () {}),
              ],
            ),
            CustomTextField(hinttext: "Unit"),
            CustomTextField(hinttext: "Discount%"),
            CustomTextField(hinttext: "Price"),
            CustomTextField(hinttext: "Total Price"),
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
                  'Save',
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
