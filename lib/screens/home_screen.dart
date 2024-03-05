import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text("Componentes en flutter"),
        elevation: 0,
        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => 
        ListTile(
          leading: const Icon(Icons.av_timer_rounded),
          title: const Text('nombre de ruta'),
          onTap: (){
            Navigator.pushNamed(context, 'card');
          },
        ), 
        separatorBuilder: ( _ , __) => const Divider() , 
        itemCount: 10)
    );
  }
}