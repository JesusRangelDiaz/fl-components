import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

    final options = const['USUARIOS','PRODUCTOS','VENTAS','REPORTES'];
   
  const Listview2Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 2'),
        elevation:0,
        backgroundColor: Colors.indigo,
      ),
      body:ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.output_outlined, color: Colors.indigo,),
          onTap: () {
            final opt = options[index];
            print(opt);
          },
        ), 
        separatorBuilder:( _ , __ ) => const Divider(), 
        itemCount: options.length
        )
    );
  }
}