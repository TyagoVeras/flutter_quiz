import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final Function fn;

  Resposta(this.texto, this.fn);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(500),
        child: SizedBox(
          height: 50,
          width: 200,
          child: ElevatedButton(onPressed: fn, child: Text(texto)),
        ),
      ),
    );
  }
}
