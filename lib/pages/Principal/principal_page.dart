import 'package:flutter/material.dart';

class PrincipalPage extends StatefulWidget {
  static const String routeName = "Principal_Page";
  const PrincipalPage({Key? key}) : super(key: key);

  @override
  createState() => _PrincipalPage();
}

class _PrincipalPage extends State<PrincipalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Amigo almacen')),
    );
  }
}
