import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FractionallySizedBox(
                  widthFactor: 0.8,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Image.asset(
                      'images/logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Card(
                  elevation: 5.0,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Aplikasi untuk mengecek apakah sudah terdaftar sebagai mahasiswa Universitas OnePiece dan untuk mengecek fakultas apa saja yang ada di Universitas OnePiece.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
