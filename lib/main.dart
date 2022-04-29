import 'package:amigo_almacen/pages/pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      title: 'Amigo_Almacen',
      initialRoute: LoginPage.routeName,
      routes: {
        LoginPage.routeName: (_) => const LoginPage(),
        RegistroPage.routeName: (_) => const RegistroPage(),
        PrincipalPage.routeName: (_) => const PrincipalPage(),
        ComidaPage.routeName: (_) => const ComidaPage(),
        BebidasPage.routeName: (_) => const BebidasPage(),
        RopaPage.routeName: (_) => const RopaPage(),
        ReportesPage.routeName: (_) => const ReportesPage(),
      },
    );
  }
}
