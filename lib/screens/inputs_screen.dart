import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myformKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'John',
      'last_name': 'Peñaloza',
      'email': 'johnmanuelpenaloza@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Form(
            key: myformKey,
            child: Column(
              children: [
                CunstomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre Completo',
                  helperText: 'Soló Letras',
                  counterText: 'Soló 15 Carácteres',
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 16),
                CunstomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido Completo',
                    helperText: 'Soló Letras',
                    counterText: 'Soló 1 Carácteres',
                    formProperty: 'last_name',
                    formValues: formValues),
                const SizedBox(height: 16),
                CunstomInputField(
                    labelText: 'Email',
                    hintText: 'Correo Electrónico',
                    helperText: 'Alfanumérico',
                    counterText: 'Soló 16 Carácteres',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues),
                const SizedBox(height: 16),
                CunstomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Password',
                    helperText: 'Alfanumérico',
                    counterText: 'Soló 8 Carácteres',
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues),
                DropdownButtonFormField(
                    value: 'Admin',
                    items: const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(
                          value: 'Super Admin', child: Text('SuperAdmin')),
                      DropdownMenuItem(
                          value: 'Developer', child: Text('Developer')),
                      DropdownMenuItem(
                          value: 'Jr. Developer', child: Text('DeveloperJr'))
                    ],
                    onChanged: ((value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    })),
                ElevatedButton(
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar'))),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myformKey.currentState!.validate()) {
                      print('Formulario valido');
                      return;
                    }
                    print(formValues);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
