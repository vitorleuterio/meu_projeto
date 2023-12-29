import 'package:flutter/material.dart';

class Produtos extends StatefulWidget {
  final String nome;
  final String descricao;
  final String foto;
  int quantidade;

  Produtos(this.nome, this.descricao, this.foto, this.quantidade, {Key? key}) : super(key: key);

  @override
  State<Produtos> createState() => _ProdutosState();
}

class _ProdutosState extends State<Produtos> {
  bool assetOrNetwork() {
    if (widget.foto.contains('http')) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 120,
              height: 120,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(3),
                  child: assetOrNetwork()
                      ? Image.asset(
                          widget.foto,
                          fit: BoxFit.fitHeight,
                        )
                      : Image.network(
                          widget.foto,
                          fit: BoxFit.fitHeight,
                        )),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  widget.nome,
                  style: const TextStyle(fontSize: 25, overflow: TextOverflow.ellipsis),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  widget.descricao,
                  style: const TextStyle(fontSize: 15, overflow: TextOverflow.ellipsis),
                ),
              ),
              Card(
                  child: SizedBox(
                height: 40,
                width: 115,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                          widget.quantidade--;
                        });
                      },
                    ),
                    Text(widget.quantidade.toString(),
                        style: const TextStyle(fontSize: 15, overflow: TextOverflow.ellipsis)),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          widget.quantidade++;
                        });
                      },
                    ),
                  ],
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
