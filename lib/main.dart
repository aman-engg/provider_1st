import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_1st/addcontactspage.dart';
import 'package:provider_1st/counterprovider.dart';
import 'package:provider_1st/contactslistpage.dart';
import 'package:provider_1st/home.dart';
import 'package:provider_1st/listmapprovider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Counterprovider()),
        ChangeNotifierProvider(create: (context) => Listmapprovider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Provider",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Listpage(),
    );
  }
}
