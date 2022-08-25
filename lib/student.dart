import 'package:app_emi/barra.dart';
import 'package:app_emi/clas/clasificacion_1.dart';
import 'package:app_emi/clas/grafica.dart';
import 'package:app_emi/clas/grafica_2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login.dart';
import 'model.dart';

class Student extends StatefulWidget {
  String id;
  Student({required this.id});
  @override
  _StudentState createState() => _StudentState(id: id);
}

class _StudentState extends State<Student> {
  final n1 = TextEditingController();
  final n2 = TextEditingController();
  double suma = 0;
  String id;
  var rooll;
  var emaill;
  UserModel loggedInUser = UserModel();

  _StudentState({required this.id});
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users") //.where('uid', isEqualTo: user!.uid)
        .doc(id)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
    }).whenComplete(() {
      CircularProgressIndicator();
      setState(() {
        emaill = loggedInUser.email.toString();
        rooll = loggedInUser.wrool.toString();
        id = loggedInUser.uid.toString();
      });
    });
  }

  @override
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('posts').snapshots();
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 25, 3, 153),
          title: Text(
            "Estudianates",
          ),
          actions: [
            IconButton(
              onPressed: () {
                logout(context);
              },
              icon: Icon(Icons.logout),
            ),
          ],
        ),
        drawer: Menu(),
        body: Center(child: Clasificacion_1())
        /*StreamBuilder(
        stream: _usersStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text("Algo es fallando");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (_, index) {
                return Scaffold(
                  body: Center(child: Text('holla')),
                );
                /*GestureDetector(
                  onTap: () {},
                  child: Column(
                    
                    children: [
                      const SizedBox(
                        height: 4,
                      ),
                      TextField(
                        controller: n1,
                        keyboardType: TextInputType.number,
                      ),
                      TextField(
                        controller: n2,
                        keyboardType: TextInputType.number,
                      ),
                      /*Padding(
                        padding: EdgeInsets.only(
                          left: 3,
                          right: 3,
                        ),
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          title: Text(
                            snapshot.data!.docChanges[index].doc['title'],
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 16,
                          ),
                        ),
                      ),*/

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
                              suma =
                                  double.parse(n1.text) + double.parse(n2.text);
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("suma"),
                                      content: Text("Resultado: $suma"),
                                    );
                                  });
                            }),
                      )
                    ],
                  ),
                );*/
              },
            ),
          );
        },
      ),*/
        );
  }

  Future<void> logout(BuildContext context) async {
    CircularProgressIndicator();
    await FirebaseAuth.instance.signOut();

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }
}
