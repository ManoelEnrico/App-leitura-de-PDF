// ignore_for_file: unused_local_variable, unused_import, non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app_leitura/Models/card_pdf.dart';
import 'package:flutter/material.dart';

class TelaLeitura extends StatelessWidget {
  const TelaLeitura({super.key});

  @override
  Widget build(BuildContext context) {
    double tamanhoH = 200;

    return Scaffold(
      backgroundColor: Colors.lightBlue[200],
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          children: [
            Center(
              child: Text(
                "Seus Arquivos",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(child: criarTela()),
          ],
        ),
      ),
    );
  }
}

criarTela() {
  return ListView.builder(
    itemCount: 5,
    itemBuilder: (context, index) {
      return Row(
        children: [
          Expanded(
            child: CardPDF(),
          ),
          Expanded(
            child: CardPDF(),
          ),
        ],
      );
    },
  );
}
