import 'package:flutter/material.dart';
import 'package:proyecto_moviles/login/log_page.dart';
import 'package:proyecto_moviles/login/register_page.dart';
import 'package:proyecto_moviles/utils/constants.dart';

class LogingPage extends StatelessWidget {
  const LogingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: <Widget>[
          SizedBox(height: 50.0),
          Column(
            children: <Widget>[
              Image.asset(LOGO_APP,width: 150,),
              SizedBox(height: 16.0),
            ],
          ),
          SizedBox(height: 50.0),
          RaisedButton(
            child: Text("REGISTRARSE"),
            //color: COLOR_3,
            elevation: 8.0,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(7.0)),
            ), // New code
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterPage()));
            },
          ),
          SizedBox(height: 30.0),
          RaisedButton(
            child: Text('INGRESAR'),
            //color: COLOR_3,
            elevation: 8.0,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(7.0)),
            ), // New code
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LogPage()));
            },
          ),
        ],
      )),
    );
  }
}
