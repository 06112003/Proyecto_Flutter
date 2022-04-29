import 'package:flutter/material.dart';

class RopaPage extends StatefulWidget {
  static const String routeName = "Ropa_Page";
  const RopaPage({Key? key}) : super(key: key);

  @override
  createState() => _RopaPage();
}

class _RopaPage extends State<RopaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Amigo almacen")),
    );
  }
}
