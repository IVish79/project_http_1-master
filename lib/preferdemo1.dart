import 'package:flutter/material.dart';

class preferdemo1 extends StatefulWidget {
  const preferdemo1({Key? key}) : super(key: key);

  @override
  State<preferdemo1> createState() => _preferdemo1State();
}

class _preferdemo1State extends State<preferdemo1> {

  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    a--;
                  });
                },
                child: Text(
                  "-",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
            Text("$a",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold)),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    a++;
                  });
                },
                child: Text(
                  "+",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
