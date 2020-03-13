import 'package:flutter/material.dart';
import 'package:proyecto_moviles/utils/constants.dart';

class Settings extends StatelessWidget {
  const Settings({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(SETTINGS_TITLE),
        actions: <Widget>[],
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 70,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          PROFILE_PICTURE,
                        ),
                        minRadius: 40,
                        maxRadius: 40,
                      ),
                    ),
                    Text(PROFILE_NAME),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                /*Text(
                  PROFILE_NAME,
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(color: Colors.black),
                ),*/
                //SizedBox(
                //  height: 8,
                //),
                Text(PROFILE_EMAIL),
                SizedBox(
                  height: 16,
                ),
                ListTile(
                  title: Text("provacidad"),
                  leading: Icon(Icons.vpn_key),
                  onTap: () {
                    /*Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) =>),//cambiar esto a la tienditaaaaa
              );*/
                  },
                ),
                ListTile(
                  title: Text("Chats"),
                  leading: Icon(Icons.chat),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("imagenes y documentos"),
                  leading: Icon(Icons.folder),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Notificaciones"),
                  leading: Icon(Icons.notifications),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Datos y almacenamiento"),
                  leading: Icon(Icons.data_usage),
                  onTap: () {},
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      child: Text(PROFILE_LOGOUT),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
