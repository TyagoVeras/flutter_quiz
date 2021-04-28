import 'package:flutter/material.dart';
import 'questionario.dart';
import 'package:quiz/resultado.dart';

class Pergunta extends StatefulWidget {
  @override
  _PerguntaState createState() => _PerguntaState();
}

class _PerguntaState extends State<Pergunta> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  List<Map<String, Object>> _perguntas = [
    {
      'pergunta': 'Qual é a sua cor favorita?',
      'resposta': [
        {'texto': 'Preto', 'nota': 10},
        {'texto': 'Vermelho', 'nota': 5},
        {'texto': 'Cobra', 'nota': 6},
        {'texto': 'Amarelo', 'nota': 7},
        {'texto': 'Azul', 'nota': 1},
      ],
    },
    {
      'pergunta': 'Qual é seu animal favorito?',
      'resposta': [
        {'texto': 'Cachorro', 'nota': 10},
        {'texto': 'Gato', 'nota': 10},
        {'texto': 'Cobra', 'nota': 10},
        {'texto': 'Elefante', 'nota': 10},
        {'texto': 'Urubu', 'nota': 10},
      ]
    },
    {
      'pergunta': 'Qual é seu curso favorito?',
      'resposta': [
        {'texto': 'Java', 'nota': 5},
        {'texto': 'Phyton', 'nota': 5},
        {'texto': 'Pascal', 'nota': 5},
        {'texto': 'PHP', 'nota': 5},
        {'texto': 'Dart', 'nota': 5},
      ]
    }
  ];

  bool get perguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(int pontuacao) {
    if (perguntaSelecionada) {
      setState(() {
        _pontuacaoTotal += pontuacao;
        _perguntaSelecionada++;
      });
    }
    print(_pontuacaoTotal);
  }

  void _reiniciarQuestionario() {
    setState(() {
      _pontuacaoTotal = 0;
      _perguntaSelecionada = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // List<Widget> widgets = [];

    // for (String textoResp in respostas) {
    //   widgets.add(Resposta(textoResp, _responder));
    // }
    // List<Widget> widgets =
    //     respostas.map((e) => Resposta(e, _responder)).toList();

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
            centerTitle: true,
          ),
          body: perguntaSelecionada
              ? Questionario(
                  perguntaSelecionada: _perguntaSelecionada,
                  perguntas: _perguntas,
                  responder: _responder)
              : Resultado(_pontuacaoTotal, _reiniciarQuestionario)),
    );
  }
}

void main() {
  runApp(Pergunta());
}
