import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee' , style: TextStyle(color: Colors.white)),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            child:CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('SL', style: TextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://www.nmas.com.mx/_next/image/?url=https%3A%2F%2Fstatic-live.nmas.com.mx%2Fnmas-news%2Fstyles%2Fcorte_16_9%2Fcloud-storage%2Fwp-thumbnails%2Fdia-de-goku-diez-cosas-que-no-sabias-de-dragon-ball.jpg%3Fitok%3DkbiHxZS1&w=1920&q=80'),
         )
      ),
    );
  }
}