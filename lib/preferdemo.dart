import 'package:flutter/material.dart';

class preferdemo extends StatefulWidget {
  const preferdemo({Key? key}) : super(key: key);

  @override
  State<preferdemo> createState() => _preferdemoState();
}

class _preferdemoState extends State<preferdemo> {
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
                  "-",textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
            Text("$a",textAlign: TextAlign.center,
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
                child: Text("+",textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),)),
          ],
        ),
      ),
    );
  }
}
