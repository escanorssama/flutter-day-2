import 'package:flutter/material.dart';

class SampleStateless extends StatelessWidget {

  var angka = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ini sample stateless"),
      ),
      body: Center(
        child: Text("Angka sekarang $angka"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          print("I'm pressed");
          angka += 1;
        },
      ),
    );
  }
}
