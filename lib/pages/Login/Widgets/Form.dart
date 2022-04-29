import 'package:flutter/material.dart';

class FormularioLogin extends StatefulWidget {
  const FormularioLogin({Key? key}) : super(key: key);

  @override
  createState() => _FormularioLogin();
}

class _FormularioLogin extends State<FormularioLogin> {
  final _formKey = GlobalKey<FormState>();
  final txtUser = TextEditingController();
  final txtPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          ListFormField(),
          ListTextButton(),
          BotonForm(),
        ],
      ),
    );
  }

  //----------------------------------//
  //---Widgets de inputs en el form---//
  //----------------------------------//
  // ignore: non_constant_identifier_names
  Widget ListFormField() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 45, 0, 35),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Fredy_144',
              labelText: 'Usuario',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              suffixIcon: const Icon(Icons.person),
            ),
            keyboardType: TextInputType.emailAddress,
            controller: txtUser,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Por favor ingreza un suario';
              }
            },
          ),
          /*----------------------- */
          const SizedBox(height: 35),
          /*----------------------- */
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            obscureText: true,
            decoration: InputDecoration(
              hintText: '***',
              labelText: 'Contraseña',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              suffixIcon: const Icon(Icons.lock_clock_outlined),
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
        ],
      ),
    );
  }

  //----------------------------------//
  //-----Widgets de los TextButton-----//
  //----------------------------------//
  // ignore: non_constant_identifier_names
  Widget ListTextButton() {
    return Column(
      children: [
        TextButton(
          child: const Text(
            "Crear una nueva cuenta",
            style: TextStyle(fontSize: 15),
          ),
          style: TextButton.styleFrom(
            minimumSize: Size.zero,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: () {},
        ),
        /*----------------------- */
        const SizedBox(height: 10),
        /*----------------------- */
        TextButton(
          child: const Text(
            "Recuperar tu contraseña",
            style: TextStyle(fontSize: 15),
          ),
          style: TextButton.styleFrom(
            minimumSize: Size.zero,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  //----------------------------------//
  //-----Widgets de los TextButton-----//
  //----------------------------------//
  // ignore: non_constant_identifier_names
  Widget BotonForm() {
    return Container(
      padding: const EdgeInsets.only(top: 45),
      width: double.infinity,
      child: ElevatedButton(
        child: const Text(
          'Iniciar sesion',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
        ),
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 10)),
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Validando..."),
              ),
            );
            if (txtUser.text == 'admin' && txtPass.text == '123') {
              Navigator.pushReplacementNamed(context, 'Ruta_Home');
            } else {
              //Credenciales incorrectas
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Credenciales incorrectas"),
                ),
              );
            }
          }
        },
      ),
    );
  }
}
