import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_1st/listmapprovider.dart';

class Addcontacts extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Contact")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Name",
                prefixIcon: Icon(Icons.contacts_rounded, size: 20),
              ),
            ),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                labelText: "Phone No",
                prefixIcon: Icon(Icons.keyboard, size: 20),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Add"),
              onPressed: () {
                if (nameController.text.isNotEmpty &&
                    phoneController.text.isNotEmpty) {
                  Provider.of<Listmapprovider>(context, listen: false).adddata({
                    "name": nameController.text,
                    "phone no": phoneController.text,
                  });

                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
