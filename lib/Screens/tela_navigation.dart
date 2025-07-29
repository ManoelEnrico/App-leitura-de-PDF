// ignore_for_file: non_constant_identifier_names

import 'package:app_leitura/Screens/tela_arquivos.dart';
import 'package:app_leitura/Screens/tela_leitura.dart';
import 'package:app_leitura/Screens/tela_perfil.dart';
import 'package:flutter/material.dart';

class TelaNavegar extends StatefulWidget {
  const TelaNavegar({super.key});

  @override
  State<TelaNavegar> createState() => _TelaNavegarState();
}

class _TelaNavegarState extends State<TelaNavegar> {
  final List<Widget> pages = [
    const TelaLeitura(),
    const ImportarPDF(),
    const TelaPerfil(),
  ];

  int tela_atual = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[tela_atual],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue[900],
        unselectedItemColor: Colors.blue,
        backgroundColor: Colors.lightBlue[100],
        showUnselectedLabels: false,
        currentIndex: tela_atual,
        onTap: (value) {
          setState(() {
            tela_atual = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.read_more), label: "Arquivos"),
          BottomNavigationBarItem(
              icon: Icon(Icons.picture_as_pdf), label: "Adicionar"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Perfil"),
        ],
      ),
    );
  }
}
