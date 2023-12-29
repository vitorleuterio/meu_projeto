import 'package:flutter/material.dart';
import 'package:meu_projeto/data/prod_inherited.dart';

import 'tela_cadastro.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key, required String title}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Produtos'),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              tooltip: '+ Adicionar Novo Produto',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contextNew) => TelaCadastro(
                      taskContext: context,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
        body: ListView(children: ProdInherited.of(context).prodList));
  }
}
