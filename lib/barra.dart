import 'package:app_emi/StudentList.dart';
import 'package:app_emi/clas/clasificacion_1.dart';
import 'package:app_emi/clas/post.dart';
import 'package:app_emi/posts.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// este es el menu de estudiantes

class Menu extends StatefulWidget {
  Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 23, 2, 117)),
            accountName: Text('Gabriel Chapi'),
            accountEmail: Text('gmail.com'),
            currentAccountPicture: Image.asset('assets/images/info.png'),
          ),
          ListTile(
            title: Text('Clasificacion Suelos'),
            leading: Icon(Icons.person),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Clasificacion_1(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Clasificacion'),
            leading: Icon(Icons.access_alarms_outlined),
            onTap: () {},
          ),
          ListTile(
            title: Text('Clasificacion 2'),
            leading: Icon(Icons.person),
            onTap: () {},
          ),
          ListTile(
            title: Text('Suelos'),
            leading: Icon(Icons.phone_android),
            onTap: () {},
          ),
          ListTile(
            title: Text('Posts'),
            leading: Icon(Icons.phone_android),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => post(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

// este es el menu de docentes

class Menu_1 extends StatefulWidget {
  Menu_1({Key? key}) : super(key: key);

  @override
  State<Menu_1> createState() => _Menu_1State();
}

class _Menu_1State extends State<Menu_1> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 23, 2, 117)),
            accountName: Text('Gabriel Chapi'),
            accountEmail: Text('gmail.com'),
            currentAccountPicture: Image.asset('assets/images/info.png'),
          ),
          ListTile(
            title: Text('Clasificacion Suelos'),
            leading: Icon(Icons.person),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Clasificacion_1(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Clasificacion'),
            leading: Icon(Icons.access_alarms_outlined),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Clasificacion_1(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Clasificacion 2'),
            leading: Icon(Icons.person),
            onTap: () {},
          ),
          ListTile(
            title: Text('Suelos'),
            leading: Icon(Icons.phone_android),
            onTap: () {},
          ),
          ListTile(
            title: Text('Lista de estudiantes'),
            leading: Icon(Icons.phone_android),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => studentList(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Postear'),
            leading: Icon(Icons.phone_android),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => posts(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
