import 'package:flutter/material.dart';
import 'package:getwidget/components/appbar/gf_appbar.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';

class AllSupplier extends StatefulWidget {
  const AllSupplier({super.key});

  @override
  State<AllSupplier> createState() => _AllSupplierState();
}

class _AllSupplierState extends State<AllSupplier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GFAppBar(
          title: const Text("All Supplier"),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            ListTile(
              leading: const GFAvatar(
                backgroundImage: AssetImage("assets/user.png"),
              ),
              title: const Text("Name"),
              subtitle: const Text("Contact Number"),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const GFAvatar(
                backgroundImage: AssetImage("assets/user.png"),
              ),
              title: const Text("Name"),
              subtitle: const Text("Contact Number"),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const GFAvatar(
                backgroundImage: AssetImage("assets/user.png"),
              ),
              title: const Text("Name"),
              subtitle: const Text("Contact Number"),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
              ),
              onTap: () {},
            ),
          ],
        ));
  }
}
