import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_1st/counterprovider.dart';
import 'package:provider_1st/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ChangeNotifierProvider(
        create: (_) => Counterprovider(),
        child: Home(),
      ),
    );
  }
}
