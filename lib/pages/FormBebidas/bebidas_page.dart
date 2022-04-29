import 'package:flutter/material.dart';

class BebidasPage extends StatefulWidget {
  static const String routeName = "Bebidas_Page";
  const BebidasPage({Key? key}) : super(key: key);

  @override
  createState() => _BebidasPage();
}

class _BebidasPage extends State<BebidasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Amigo almacen")),
    );
  }
}
