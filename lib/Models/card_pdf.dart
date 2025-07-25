// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CardPDF extends StatefulWidget {
  const CardPDF({super.key});

  @override
  State<CardPDF> createState() => _CardPDFState();
}

class _CardPDFState extends State<CardPDF> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: GestureDetector(
        onTap: () {
          final snackBar = SnackBar(
            content: Text(
              "Teste",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            duration: Duration(seconds: 2),
            backgroundColor: Colors.white,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.symmetric(horizontal: 120, vertical: 20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Card(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Expanded(
                  child: Icon(
                    Icons.file_download,
                    size: 50,
                  ),
                ),
                Divider(
                  height: 5,
                  thickness: 1,
                ),
                Text(
                  "Nome do Arquivo",
                  style: TextStyle(
                    fontSize: 17.5,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}