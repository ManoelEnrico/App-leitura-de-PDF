// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TelaPerfil extends StatelessWidget {
  const TelaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[200],
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Center(
          child: Column(
            children: [
              Icon(
                Icons.account_circle,
                color: Colors.grey[700],
                size: 200,
              ),
              Divider(
                thickness: 5,
                color: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Perfil Teste",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
