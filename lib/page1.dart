import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(41, 55, 28, 1),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 250.0,
              width: 450.0,
              child: Image.asset(
                'assets/logospng/blissful_blossom_portada2.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20), // Espacio entre la imagen y el contenido adicional
          ],
        ),
      ),
    );
  }
}