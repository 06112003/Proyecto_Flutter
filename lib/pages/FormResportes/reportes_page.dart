import 'package:flutter/material.dart';

class ReportesPage extends StatefulWidget {
  static const String routeName = "Reportes_Page";
  const ReportesPage({Key? key}) : super(key: key);

  @override
  createState() => _ReportesPage();
}

class _ReportesPage extends State<ReportesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Amigo almacen")),
    );
  }
}
