import 'package:despesas_pessoais/models/transaction.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Tudo());
}

class Tudo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final _trasations = {
    Transaction(
        id: 't1',
        title: 'Pênis de corrida',
        value: 24.69,
        date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Conta do Puteiro', value: 20, date: DateTime.now()),
  };

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Quanto você esta fodido"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: const Card(
                color: Colors.yellow,
                elevation: 5,
                child: Text("Grafico"),
              ),
            ),
            Column(
              children: _trasations.map((tr) {
                return Card(
                  child: Text(tr.title),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
