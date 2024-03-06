import 'package:flutter/material.dart';


import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const intitialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home', icon: Icons.home, name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list, name: 'ListView 1', screen: const Listview1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list_alt, name: 'ListView 2', screen: const Listview2Screen()),
    MenuOption(route: 'alert', icon: Icons.dangerous_sharp, name: 'alert', screen: const AlertScreen()),
    MenuOption(route: 'card', icon: Icons.credit_card, name: 'card', screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    
    Map<String,Widget Function(BuildContext)> appRoutes={};
      for (final option in menuOptions){
        appRoutes.addAll({option.route : (BuildContext context) => option.screen});
      }
    return appRoutes;
  }
  /*static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };*/

  static Route<dynamic> onGeneralRoute(RouteSettings settings){
    return MaterialPageRoute(
      builder: (context)=> const AlertScreen());
  }
}
