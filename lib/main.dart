// ignore_for_file: prefer_const_constructors, unused_import

import 'package:app_leitura/Screens/tela_arquivos.dart';
import 'package:app_leitura/Screens/tela_leitura.dart';
import 'package:app_leitura/Screens/tela_navigation.dart';
import 'package:app_leitura/Screens/tela_perfil.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TelaNavegar(),
    );
  }
}
