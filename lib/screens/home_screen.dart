import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  
  const HomeScreen({super.key});

  
  
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return  Scaffold(
      appBar:  AppBar(
        title: const Text("Componentes en flutter", style: TextStyle(fontSize: 25)),
        elevation: 0,
        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => 
        ListTile(
          leading: Icon(menuOptions[index].icon, color: Colors.indigoAccent),
          title: Text(menuOptions[index].name, style: const TextStyle( fontSize: 20),),
          onTap: (){
            Navigator.pushNamed(context, menuOptions[index].route);
          },
        ), 
        separatorBuilder: ( _ , __) => const Divider() , 
        itemCount: menuOptions.length)
    );
  }
}