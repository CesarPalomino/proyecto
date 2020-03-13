import 'package:flutter/material.dart';
import 'package:proyecto_moviles/home/archiv/image_url.dart';
import 'package:proyecto_moviles/settings.dart';

class FolderPage extends StatefulWidget {
  FolderPage({Key key}) : super(key: key);

  @override
  _FolderPageState createState() => _FolderPageState();
}

class _FolderPageState extends State<FolderPage> {
  TextEditingController _todoTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: _scaffoldkey,
      appBar: AppBar(
        title: Text("My Forlder"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.folder),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => Settings()));
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
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text("imagen1"),
            subtitle: Text("Almacenado: hace un dia"),
            leading: Icon(Icons.image),
            onTap: () {},
          ),
          ListTile(
            title: Text("ProyectoMoviles"),
            subtitle: Text("ALmacenado: hace 5 minutos"),
            leading: Icon(Icons.folder_open),
            onTap: () {},
          ),
          ListTile(
            title: Text("no abrir"),
            subtitle: Text("Almacenado: hace 1 mes"),
            leading: Icon(Icons.ondemand_video),
            onTap: () {},
          ),
          ListTile(
            title: Text("error73121"),
            subtitle: Text("data"),
            leading: Icon(Icons.highlight_off),
            onTap: () {},
          ),
        ],
      ),
      /*floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.amber,
            child: const Icon(Icons.add),
      onPressed: () {

      }
    ),*/
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await showModalBottomSheet(
            context: context,
            builder: (context) => StatefulBuilder(
              builder: (context, setModalState) =>
                  _bottomSheet(context, setModalState),
            ),
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
            ),
          ).then(
            (result) {
              if (result != null) ;
              //_homeBloc.add(OnAddElementEvent(todoReminder: result));
            },
          );
          // add reminder to listview
          // bloc add reminder to db
          // TODO: dejarlo como todo
        },
        label: Text("Agregar"),
        icon: Icon(Icons.add_circle),
      ),
    );
  }

  Widget _bottomSheet(BuildContext context, StateSetter setModalState) {
    return Padding(
      padding: EdgeInsets.only(
        top: 24.0,
        left: 24,
        right: 24,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Seleccionar foto",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            /*TextField(
              controller: _todoTextController,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                labelText: "Ingrese url de imagen a descargar",
                labelStyle: TextStyle(color: Colors.black87),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
            ),*/
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {print("quepedooo"); ImageUrl(); });
                    // refreshes modal bottom sheet with new hour value
                    setModalState(() {});
                  },
                ),
                Text("Buscar imagen con URL"),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.camera_enhance),
                  onPressed: () {
                    // refreshes modal bottom sheet with new hour value
                    setModalState(() {});
                  },
                ),
                Text("Tomar una foto con camara"),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.camera),
                  onPressed: () {
                    // refreshes modal bottom sheet with new hour value
                    setModalState(() {});
                  },
                ),
                Text("seleccione una fotodo de la galeria"),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            MaterialButton(
              child: Text(""),
              onPressed: () {
                Navigator.of(context).pop(
                    /*TodoRemainder(
                    todoDescription: "${_todoTextController.text}",
                    hour: "${_horario.format(context)}",
                  ),*/
                    );
                _todoTextController.clear();
              },
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
