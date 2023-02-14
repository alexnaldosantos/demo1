import 'package:flutter/material.dart';

class TelaB extends StatelessWidget {
  const TelaB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela B'),
        // Adiciona o botão de voltar na barra de navegação
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: const Center(
        child: Text('Esta é a tela B!'),
      ),
    );
  }
}
