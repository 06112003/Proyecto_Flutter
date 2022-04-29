import 'package:amigo_almacen/pages/Login/Widgets/Form.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = 'Login_Page';
  const LoginPage({Key? key}) : super(key: key);

  @override
  createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Image.asset('assets/Logo.png', fit: BoxFit.cover, height: 32),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/Fondo_Login.jpg'),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * .45,
                ),
              ),
              Positioned(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        const Color.fromARGB(255, 100, 118, 220)
                            .withOpacity(0.6),
                        Colors.indigo.withOpacity(0.6),
                      ],
                      stops: const [0.5, 1.0],
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * .45,
                ),
              ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 38),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 0,
                                    horizontal: 22,
                                  ),
                                  child: Card(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(
                                        color: Colors.grey.withOpacity(0.2),
                                        width: 4,
                                      ),
                                    ),
                                    margin: const EdgeInsets.only(top: 44),
                                    child: Container(
                                      constraints:
                                          const BoxConstraints(maxWidth: 450),
                                      padding: const EdgeInsets.fromLTRB(
                                          28, 69, 28, 25),
                                      child: Column(
                                        children: const <Widget>[
                                          Text(
                                            'Bienvenido al login',
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          FormularioLogin()
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              child: Center(
                                child: Container(
                                  width: 84,
                                  height: 84,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.indigo),
                                  child: const Icon(
                                    Icons.assignment_ind_rounded,
                                    size: 45,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
