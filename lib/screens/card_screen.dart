import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 20),
            CustomCardType2(encabezado: 'Montañas soleaditas', imageUrl: 'https://images.alphacoders.com/134/1341414.png'),
            SizedBox(height: 20),
            CustomCardType2(encabezado: 'Mapa de méxico xd',   imageUrl: 'https://www.delmundo.top/wp-content/uploads/2023/10/mapa-mexico-division-politica-alta-resolucion.png'),
            SizedBox(height: 20),
            CustomCardType2(encabezado: 'Montañas sabrosas',   imageUrl: 'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg'),
            SizedBox(height: 20),
            CustomCardType2(imageUrl: 'https://i.natgeofe.com/n/737e4cbf-3d9e-4f89-b4b2-29b5cf303dba/01-best_pod_landscapes_16x9.jpg'),
            SizedBox(height: 100),
          ],
        ));
  }
}
