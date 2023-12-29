import 'package:flutter/material.dart';
import 'package:meu_projeto/data/prod_inherited.dart';
import 'telas/tela_inicial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ProdInherited(
          child: const TelaInicial(
        title: 'Produtos',
      )),
    );
  }
}
