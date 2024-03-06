import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs - Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child:Column(
            children: [
              TextFormField(
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) =>{
                  print(value)
                },
                validator: (value) {
                  if (value == null) return 'Ete campo es requerido';
                  return value.length<3 ? 'Minimo de 3 letras' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration:const  InputDecoration(
                  hintText: 'Nombre del usuario',
                  labelText: 'Nombre',
                  helperText: 'Sólo letras',
                  counterText: '3 caracteres',
                  suffixIcon: Icon(Icons.group),
                  icon: Icon(Icons.admin_panel_settings_sharp),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                  border: OutlineInputBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)))
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}