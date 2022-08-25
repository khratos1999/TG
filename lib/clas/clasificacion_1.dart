import 'dart:html';

import 'package:flutter/material.dart';

class Clasificacion_1 extends StatefulWidget {
  Clasificacion_1({Key? key}) : super(key: key);

  @override
  State<Clasificacion_1> createState() => _Clasificacion_1State();
}

class _Clasificacion_1State extends State<Clasificacion_1> {
  final LL = TextEditingController();
  final LP = TextEditingController();
  String IP = '';

  double resta = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('esta es una preuba 1'),
      ),*/
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "CLASIFICACION S.U.C.S",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 22, 3, 128),
                  fontSize: 25,
                ),
              ),
            ),
            Center(
              child: Text('Limit Liquidosss'),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Limite Liquido",
                    border: InputBorder.none,
                    suffix: GestureDetector(
                      child: Icon(Icons.backspace),
                      onTap: () {
                        LL.clear();
                      },
                    )),
                style: TextStyle(fontSize: 17),
                controller: LL,
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text('Limite PlasStico'),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Limite Plastico",
                    border: InputBorder.none,
                    suffix: GestureDetector(
                      child: Icon(Icons.backspace),
                      onTap: () {
                        LP.clear();
                      },
                    )),
                style: TextStyle(fontSize: 17),
                controller: LP,
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.symmetric(horizontal: 50),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: RaisedButton(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                        child: Text(
                      'Calcular',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )),
                  ),
                  onPressed: () {
                    resta = double.parse(LL.text) - double.parse(LP.text);
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("suma"),
                            content: Text("Resultado: $resta"),
                          );
                        });
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Resultado: $resta',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.red, fontSize: 10),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
