import 'package:flutter/cupertino.dart';
import '../componentes/produtos.dart';

class ProdInherited extends InheritedWidget {
  ProdInherited({Key? key, required Widget child}) : super(key: key, child: child);

  final List<Produtos> prodList = [
    Produtos('Nome Produto 1', 'Descrição do Produto', 'assets/images/Arudin.jpg', 1),
    Produtos('Nome Produto 2', 'Descrição do Produto', 'assets/images/Arudin.jpg', 1),
    Produtos('Nome Produto 3', 'Descrição do Produto', 'assets/images/Arudin.jpg', 1),
    Produtos('Nome Produto 4', 'Descrição do Produto', 'assets/images/Arudin.jpg', 1),
    Produtos('Nome Produto 5', 'Descrição do Produto', 'assets/images/Arudin.jpg', 1),
  ];

  void newTask(String nome, String descricao, String imagem, int quantidade) {
    prodList.add(Produtos(nome, descricao, imagem, quantidade));
  }

  static ProdInherited of(BuildContext context) {
    final ProdInherited? result = context.dependOnInheritedWidgetOfExactType();
    assert(result != null, '');
    return result!;
  }

  @override
  bool updateShouldNotify(ProdInherited oldWidget) {
    return oldWidget.prodList.length != prodList.length;
  }
}
