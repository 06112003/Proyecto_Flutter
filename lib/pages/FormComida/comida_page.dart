import 'package:flutter/material.dart';

class ComidaPage extends StatefulWidget {
  static const String routeName = "Comida_Page";
  const ComidaPage({Key? key}) : super(key: key);

  @override
  createState() => _ComidaPage();
}

class _ComidaPage extends State<ComidaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Amigo almacen"),
      ),
    );
  }
}
