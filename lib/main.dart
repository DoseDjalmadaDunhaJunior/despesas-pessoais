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
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.blue,
                          width: 2,
                        )),
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          tr.value.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(tr.title,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey)),
                          Text(
                            tr.date.toString(),
                            style: const TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
