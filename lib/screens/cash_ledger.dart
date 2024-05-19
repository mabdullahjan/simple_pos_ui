import 'package:flutter/material.dart';
import 'package:getwidget/components/card/gf_card.dart';
import 'package:point_of_sale/widgets/custom_textfield.dart';

class CashLedger extends StatelessWidget {
  const CashLedger({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController inAmountController = TextEditingController();
    TextEditingController OutAmountController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Cash Ledger"),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              'Item Name',
              style: TextStyle(fontFamily: "Jersey", fontSize: 25),
            ),
            subtitle: Text(
              "Amount",
              style: TextStyle(fontFamily: "Jersey", fontSize: 25),
            ),
            //Here is every thing which yu need for example on change or icon validator etc.
            trailing: Text(
              "In/out",
              style: TextStyle(fontFamily: "Jersey", fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
