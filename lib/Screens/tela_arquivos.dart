// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ImportarPDF extends StatelessWidget {
  const ImportarPDF({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[200],
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Center(
          child: GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.file_download_rounded,
                    size: 100,
                  ),
                  Text(
                    "Selecione seus arquivos",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 20,
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
