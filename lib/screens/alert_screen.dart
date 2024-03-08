import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return  CupertinoAlertDialog(
          title: const Text('alerta IOS'),
          content:  const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ],
          ),
          actions: [
            TextButton(
              onPressed:() => Navigator.pop(context) , 
              child: const Text('cancelar',style: TextStyle(color: Color.fromARGB(255, 254, 17, 0)),)
            ),
            TextButton(
              onPressed:() => Navigator.pop(context) , 
              child: const Text('aceptar')
            ),

          ],
      );
      }
    );
  }

  void displayDialogAndroid(BuildContext context){

    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          title: const Text('Titulo xdd'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ],
          ),
          actions: [
            TextButton(
              onPressed:() => Navigator.pop(context) , 
              child: const Text('cancelar')
            ),
            TextButton(
              onPressed:() => Navigator.pop(context) , 
              child: const Text('aceptar')
            ),

          ],
        );
      },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Screen'),
      ),
      body:  Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(elevation:7),
          onPressed: ()=>
            Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIOS(context)
          ,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text('Mostrar Alerta', style: TextStyle(fontSize: 25, color: Colors.white)),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        onPressed: (){
          Navigator.pop(context);
        },
        child: const Icon(Icons.close),
      ),
    );
  }
}
