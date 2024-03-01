import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

    final options = const['USUARIOS','PRODUCTOS','VENTAS','REPORTES'];
   
  const Listview1Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
      ),
      body:ListView(
        children: [
            ...options.map((e) => 
            ListTile(
              title: Text(e),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            )
            )
        ],
      ),
    );
  }
}