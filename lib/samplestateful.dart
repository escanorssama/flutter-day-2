import 'package:flutter/material.dart';

class SampleStateful extends StatefulWidget {
  @override
  _SampleStatefulState createState() => _SampleStatefulState();
}

class _SampleStatefulState extends State<SampleStateful> {
  var angka = 0;
  var isEven = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ini sample stateful"),
        backgroundColor: isEven ? Colors.yellow : Colors.purple,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Angka sekarang $angka | genap: $isEven"),
            FloatingActionButton(
              child: Icon(Icons.refresh),
              backgroundColor: isEven ? Colors.red : Colors.brown,
              onPressed: () {
                print("I'm pressed");

                setState(() {
                  angka += 1;
                  isEven = (angka % 2) == 0;
                });
              },
            ),
            FloatingActionButton(
              child: Icon(Icons.refresh),
              backgroundColor: isEven ? Colors.blue : Colors.pink,
              onPressed: () {
                print("I'm pressed");

                setState(() {
                  angka += 1;
                  isEven = (angka % 2) == 0;
                });
              },
            ),
            FloatingActionButton(
              child: Icon(Icons.refresh),
              backgroundColor: isEven ? Colors.green : Colors.grey,
              onPressed: () {
                print("I'm pressed");

                setState(() {
                  angka += 1;
                  isEven = (angka % 2) == 0;
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        backgroundColor: isEven ? Colors.yellow : Colors.purple,
        onPressed: () {
          print("I'm pressed");

          setState(() {
            angka += 1;
            isEven = (angka % 2) == 0;
          });
        },
      ),
    );
  }
}