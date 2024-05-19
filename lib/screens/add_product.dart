import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:point_of_sale/widgets/custom_textfield.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  List dropDownListData = [
    {"title": "Shoes", "value": "1"},
    {"title": "Watches", "value": "2"},
    {"title": "Mobiles", "value": "3"},
    {"title": "Laptops", "value": "4"},
    {"title": "Pens", "value": "5"},
  ];

  String? defualtvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Product"),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomTextField(
              hinttext: 'Product Name',
              icon: Icon(Icons.production_quantity_limits),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, right: 10, left: 10, bottom: 15),
              child: InputDecorator(
                decoration: const InputDecoration(
                    filled: true,
                    isDense: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 5),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gapPadding: 12,
                    )),
                child: DropdownButton(
                    value: defualtvalue,
                    isExpanded: true,
                    isDense: true,
                    padding: const EdgeInsets.all(20),
                    menuMaxHeight: 400,
                    hint: const Text('Select Category'),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    items: [
                      const DropdownMenuItem(
                        value: "",
                        child: Text(
                          "Select Category",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ...dropDownListData.map<DropdownMenuItem<String>>((e) {
                        return DropdownMenuItem(
                          value: e['value'],
                          child: Text(e['title']),
                        );
                      }),
                    ],
                    onChanged: (value) {
                      setState(() {
                        defualtvalue = value!;
                      });
                      // print("Selected product is $value");
                    }),
              ),
            ),
            const CustomTextField(
              hinttext: "Description",
              icon: Icon(Icons.description),
            ),
            CustomTextField(
              hinttext: "Price",
              icon: const Icon(Icons.price_change_outlined),
              inputformatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardtype: TextInputType.number,
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
                  'Add Product',
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
