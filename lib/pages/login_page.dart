import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = 'Login_Page';
  const LoginPage({Key? key}) : super(key: key);
  @override
  createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final txtUser = TextEditingController();
  final txtPass = TextEditingController();
  bool condiciones = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          title: Image.asset(
        'assets/Logo.png',
        fit: BoxFit.cover,
        height: 32,
      )),
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
                                      vertical: 0, horizontal: 22),
                                  child: Card(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(
                                          color: Colors.grey.withOpacity(0.2),
                                          width: 4),
                                    ),
                                    margin: const EdgeInsets.only(top: 44),
                                    child: Container(
                                      constraints:
                                          const BoxConstraints(maxWidth: 450),
                                      padding: const EdgeInsets.fromLTRB(
                                          28, 69, 28, 25),
                                      child: Column(
                                        children: <Widget>[
                                          const Text(
                                            'Bienvenido al login',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(height: 45),
                                          Form(
                                            key: _formKey,
                                            child: Column(
                                              children: <Widget>[
                                                /*-------Primer input-------*/
                                                /*--------------*/
                                                /*--------------*/
                                                TextFormField(
                                                  decoration: InputDecoration(
                                                    hintText: 'Fredy_144',
                                                    labelText: 'Usuario',
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    suffixIcon: const Icon(
                                                        Icons.person),
                                                  ),
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  controller: txtUser,
                                                  validator: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'Por favor ingreza un suario';
                                                    }
                                                  },
                                                ),
                                                const SizedBox(
                                                  height: 35,
                                                ),
                                                /*-------Segundo input-------*/
                                                /*--------------*/
                                                /*--------------*/
                                                TextFormField(
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  obscureText: true,
                                                  decoration: InputDecoration(
                                                    hintText: '***',
                                                    labelText: 'Contraseña',
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    suffixIcon: const Icon(Icons
                                                        .lock_clock_outlined),
                                                  ),
                                                  controller: txtPass,
                                                  validator: (value) {
                                                    if (value!.length < 3) {
                                                      return 'La contraseña debe tener minimo 3 caracteres';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
                                                ),

                                                const SizedBox(height: 35),

                                                TextButton(
                                                  child: const Text(
                                                    "Crear una nueva cuenta",
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  ),
                                                  style: TextButton.styleFrom(
                                                    minimumSize: Size.zero,
                                                    padding: EdgeInsets.zero,
                                                    tapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                  ),
                                                  onPressed: () {},
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                TextButton(
                                                  child: const Text(
                                                    "Recuperar tu contraseña",
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  ),
                                                  style: TextButton.styleFrom(
                                                    minimumSize: Size.zero,
                                                    padding: EdgeInsets.zero,
                                                    tapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                  ),
                                                  onPressed: () {},
                                                ),

                                                const SizedBox(height: 45),
                                                //const Text("¿No tienes una cuenta?"),
                                                Container(
                                                  width: double.infinity,
                                                  child: ElevatedButton(
                                                    child: const Text(
                                                      'Iniciar sesion',
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    onPressed: () {
                                                      print(txtPass.text +
                                                          " " +
                                                          txtUser.text);
                                                      if (_formKey.currentState!
                                                          .validate()) {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          const SnackBar(
                                                            content: Text(
                                                                "Validando..."),
                                                          ),
                                                        );
                                                        if (txtUser.text ==
                                                                'admin' &&
                                                            txtPass.text ==
                                                                '123') {
                                                          Navigator
                                                              .pushReplacementNamed(
                                                                  context,
                                                                  'Ruta_Home');
                                                        } else {
                                                          //Credenciales incorrectas
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            const SnackBar(
                                                              content: Text(
                                                                  "Credenciales incorrectas"),
                                                            ),
                                                          );
                                                        }
                                                      }
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
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
                              )),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                BottomNavigationBar(items: const <BottomNavigationBar>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.login), label: "Login")
                ])
              ],
            ),
          )),
    );
  }
}
