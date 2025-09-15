import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:provider_1st/listmapprovider.dart';

class Addcontacts extends StatelessWidget {
  var namecontroler = TextEditingController();
  var phonecontroler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var hight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text("Add contacts")),
      body: Container(
        width: width,
        height: hight,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: namecontroler,
                decoration: InputDecoration(
                  labelText: "Name",
                  prefixIcon: Icon(Icons.perm_contact_calendar_sharp),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: phonecontroler,
                decoration: InputDecoration(
                  labelText: "Phone no",
                  prefixIcon: Icon(Icons.keyboard),
                ),
                keyboardType: TextInputType.phone,
              ),
            ),

            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.all(12),

              child: ElevatedButton(
                onPressed: () {
                  Provider.of<Listmapprovider>(context, listen: false).adddata({
                    "name": namecontroler.text,
                    "phone no": phonecontroler.text,
                  });
                },
                child: Text("Add"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
