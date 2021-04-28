import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciar;
  Resultado(this.pontuacao, this.reiniciar);

  String get resultado {
    if (pontuacao < 8) {
      return 'Parabens';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 20) {
      return 'Você é fera!';
    } else {
      return 'Nivel jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text('O resultado da sua foi: $resultado'),
        ),
        SizedBox(height: 20),
        ElevatedButton(onPressed: reiniciar, child: Text('reiniciar...'))
      ],
    );
  }
}
