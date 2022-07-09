import 'package:flutter/material.dart';

import '../widgets/custom_imput_field.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Enzo',
      'last_name': 'Gomez',
      'email': 'gomezenzo1128@gmail.com',
      'password': '12345',
      'role': 'admin',
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs and Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomImputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del usuario',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomImputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del usuario',
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomImputField(
                    labelText: 'Email',
                    hintText: 'Correo del usuario',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomImputField(
                      labelText: 'Contraseña',
                      hintText: 'Contaseña del usuario',
                      obscureText: true,
                      formProperty: 'password',
                      formValues: formValues),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar')),
                    ),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }
                      print(formValues);
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
