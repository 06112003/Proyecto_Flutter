import 'package:flutter/material.dart';

class RegistroPage extends StatefulWidget {
  static const String routeName = "Registro_Page";
  const RegistroPage({Key? key}) : super(key: key);

  @override
  createState() => _RegistroPage();
}

class _RegistroPage extends State<RegistroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Amigo Almacen")),
    );
  }
}
