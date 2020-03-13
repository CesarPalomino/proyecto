import 'package:flutter/material.dart';
import 'package:proyecto_moviles/forlder_page.dart';
import 'package:proyecto_moviles/settings.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: _scaffoldkey,
      appBar: AppBar(
        title: Text("FileApp"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.folder),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => FolderPage()));
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => Settings()),
              );
            },
          ),
        ],
      ),
      body:  Column(
            children: <Widget>[
              ListTile(
                title: Text("Name user"),
                subtitle: Text("enviando imagen..."),
                leading: Icon(Icons.face),
                onTap: () {},
              ),
              ListTile(
                title: Text("Name user"),
                subtitle: Text("enviando archivo..."),
                leading: Icon(Icons.face),
                onTap: () {},
              ),
              ListTile(
                title: Text("Name user"),
                subtitle: Text("archivo.mp4"),
                
                leading: Icon(Icons.face),
                onTap: () {},
              ),
              ListTile(
                title: Text("Name user"),
                subtitle: Text("data"),
                leading: Icon(Icons.face),
                onTap: () {},
              ),
            ],
          ),
    );
  }
}
/*Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => Profile()),
              );*/
/*ListView(
        children: <Widget>[
          GestureDetector(
            onTap: _openDrinksPage,
            child: ItemHome(
              title: "Bebidas",
              image: "https://i.blogs.es/723857/cafe_como/450_1000.jpg",
            ),
          ),
          GestureDetector(
            onTap: _openGrainsPage,
            child: ItemHome(
              title: "Cafe en grano",
              image: "https://www.elplural.com/uploads/s1/34/84/2/cafe.jpeg",
            ),
          ),
          GestureDetector(
            onTap: _openCupsPage,
            child: ItemHome(
              title: "Tazas",
              image: "https://i.blogs.es/723857/cafe_como/450_1000.jpg",
            ),
          )
        ],
      ),*/

/*if (productos["CART"].length == 0) {
                _scaffoldkey.currentState
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(
                      content: Text("No tienes articulos en el carrito..."),
                    ),
                  );
              } else {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (_) => Cart(
                            proCartList: productos["CART"],
                          )),
                );
              }*/
