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
      body: //Container(
//        padding: EdgeInsets.only(left: 30, right: 30, top: 37, bottom: 20),
          // child:
          Stack(
        children: [
          Positioned.fill(
            top: 35,
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Seus Arquivos",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            top: 80,
            bottom: 5,
            left: 1,
            right: 1,
            child: criarTela(),
          ),
          Positioned.fill(
            bottom: 10,
            top: 560,
            left: 310,
            child: criarButtom(),
          ),
        ],
      ),
      //     ),
    );
  }
}

criarTela() {
  return SizedBox(
    height: 520,
    width: 500,
    child: ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Expanded(
                child: CardPDF(),
              ),
              Expanded(
                child: CardPDF(),
              ),
            ],
          ),
        );
      },
    ),
  );
}

criarButtom() {
  return Container(
    height: 60,
    width: 60,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.lightBlue[100],
    ),
    child: IconButton(
      onPressed: () {
        
      },
      icon: Icon(
        Icons.add,
        size: 40,
        color: Colors.blue[900],
      ),
    ),
  );
}

