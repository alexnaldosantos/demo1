import 'package:flutter/material.dart';
import 'tela_b.dart';

class TelaA extends StatelessWidget {
  const TelaA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela A'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Ir para a tela B'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TelaB()),
            );
          },
        ),
      ),
    );
  }
}
