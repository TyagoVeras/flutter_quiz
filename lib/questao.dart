import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  Questao({this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      color: Colors.black12,
      width: double.infinity,
      child: Text(
        texto,
        style: TextStyle(color: Colors.red, fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
