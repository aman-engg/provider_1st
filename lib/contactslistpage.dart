import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_1st/addcontactspage.dart';
import 'package:provider_1st/listmapprovider.dart';

class Listpage extends StatefulWidget {
  const Listpage({super.key});

  @override
  State<Listpage> createState() => _ListState();
}

class _ListState extends State<Listpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Listmapprovider>(
        builder: (ctx, value, _) {
          var alldata = value.getlist();
          return value.getlist().isNotEmpty
              ? ListView.builder(
                itemCount: alldata.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("${alldata[index]["name"]}"),
                    subtitle: Text("${alldata[index]["phone no"]}"),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Provider.of<Listmapprovider>(
                                context,
                                listen: false,
                              ).deletedata(index);
                            },
                            icon: Icon(Icons.delete, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
              : Center(child: Text("No data"));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Addcontacts()),
          );
        },
      ),
    );
  }
}
