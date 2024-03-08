import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey();

    final Map<String,String> formValues = {
      'first_name': 'jesus',
      'last_name' : 'rangel',
      'email'     : 'jesus.rangel@cceo.com.mx',
      'password'  : 'sjdaklsjdhalskjhdaklsd',
      'role'      : 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs - Forms'),
      ),
      body:  SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  const Text('REGISTER USER FORM'),
                  const SizedBox(height: 20),
                  CustomInputField(labelText: 'nombre', hintText: 'nombre(s)', keyboardType1: TextInputType.name, formProperty: 'first_name',formValues: formValues),
                  const SizedBox(height: 30),
                  CustomInputField(labelText: 'apellido', hintText: 'apellido(s)', keyboardType1: TextInputType.name, formProperty: 'last_name', formValues: formValues),
                  const SizedBox(height: 30),
                  CustomInputField(labelText: 'correo', hintText: 'correo electronico' ,keyboardType1: TextInputType.emailAddress, formProperty: 'email', formValues:formValues),
                  const SizedBox(height: 30),
                  CustomInputField(labelText: 'contraseña', hintText: 'contraseña', isPassword: true, formProperty: 'password', formValues: formValues),
                  const SizedBox(height: 30),
                  DropdownButtonFormField<String>(
                    value: 'Admin',
                    items:const [ 
                      DropdownMenuItem(value:'Admin',child: Text('Admin')),
                      DropdownMenuItem(value:'SuperUser',child: Text('admin')),
                      DropdownMenuItem(value:'Developer',child: Text('Developer')),
                      DropdownMenuItem(value:'Jr.Developer',child: Text('Jr.Developer'))], 
                    onChanged: (value){
                      formValues['role']=value??'admin';
                    }
                    ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                        onPressed:(){
                          FocusScope.of(context).requestFocus(FocusNode());
                          if (!myFormKey.currentState!.validate()){
                            print('formulario no valido');
                          }
                          print(formValues);
                        }, 
                        child:const SizedBox(
                          width: double.infinity,
                          child: Center(child:  Text('Guardar',style: TextStyle(color: Colors.white,fontSize: 20),)),
                        )
                        ),
                ]),
            ),
            ),
      ),
    );
  }
}

