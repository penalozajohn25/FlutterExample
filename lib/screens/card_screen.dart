import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('tarjetas de prueba'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: const [
          CardCunstomType1(),
          SizedBox(height: 10),
          CardCunstomType2(
              urlImage:
                  "https://img.freepik.com/foto-gratis/pintura-digital-montana-arbol-colorido-primer-plano_1340-25699.jpg?w=2000",
              name: 'Un Hermoso Paisaje'),
          SizedBox(height: 10),
          CardCunstomType2(
            urlImage:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_6AC-GLh5_ZPR4Jwn1GtlddJ8sEemfvDZLw&usqp=CAU',
          ),
          SizedBox(height: 100),
          CardCunstomType2(
            urlImage:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpWXse2QR5l70C2q5Mu9_pPxDU8eWgEk47Nw&usqp=CAU',
          ),
          SizedBox(height: 10),
          CardCunstomType2(
            urlImage:
                'https://img.freepik.com/foto-gratis/pintura-digital-montana-arbol-colorido-primer-plano_1340-25699.jpg?w=2000',
          )
        ],
      ),
    );
  }
}
