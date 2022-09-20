import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class preferdemo1 extends StatefulWidget {
  const preferdemo1({Key? key}) : super(key: key);

  @override
  State<preferdemo1> createState() => _preferdemo1State();
}

class _preferdemo1State extends State<preferdemo1> {
  int a = 0;

  SharedPreferences? prefs;

  getpref() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    getpref();
  }

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
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () async {
                  await prefs!.setInt('MyValue1', a);
                  await prefs!.setInt('MyValue2', a * 10);
                },
                child: Text("Store Value")),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  final int a = prefs!.getInt('MyValue1') ?? 0;
                  final int b = prefs!.getInt('MyValue2') ?? 10;

                  print(a);
                  print(b);
                },
                child: Text("Get Value")),
          ],
        ),
      ),
    );
  }
}
