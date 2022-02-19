import 'package:flutter/material.dart';
import 'package:test/src/produk/index.dart';
import 'package:test/src/produk/_id.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Test',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: '/',
      routes: {
        "/": (context) => const Produk(),
        "/produk/id": (context) => const ProdukId(),
      },
    );
  }
}
