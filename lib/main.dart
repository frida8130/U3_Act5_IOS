import 'package:flutter/material.dart';

void main() => runApp(Mitarjeta());

class Mitarjeta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
            appBar: AppBar(
              title: Text('Tarjetas Angelica'),
              actions: <Widget>[
                IconButton(
                  icon:Icon(Icons.add_a_photo), 
                  onPressed:(){},
                  ),
              ],
            ),
            body: Container(
              child: ListView(
                children: <Widget>[
                  _items('https://raw.githubusercontent.com/frida8130/Mis_Imagenes/main/Yo_Chiquita.jpg',"Chiquita"),
                  SizedBox(height: 5.0,),
                   _items('https://raw.githubusercontent.com/frida8130/Mis_Imagenes/main/Ir.jpg',"Amor"),
                  SizedBox(height: 5.0,),
                  _items('https://raw.githubusercontent.com/frida8130/Mis_Imagenes/main/Lau-men.jpg',"Chicas"),
                  SizedBox(height: 5.0,),
                  _items('https://raw.githubusercontent.com/frida8130/Mis_Imagenes/main/Abi.jpg',"Abib"),
                  SizedBox(height: 5.0,),
                  _items('https://raw.githubusercontent.com/frida8130/Mis_Imagenes/main/Frida%20Sanchez.jpg',"Divina"),
                  SizedBox(height: 5.0,),
                  _items('https://raw.githubusercontent.com/frida8130/Mis_Imagenes/main/ir.png',"Corazon"),
                  SizedBox(height: 5.0,),
                ],
              ),
            )
          ),//fin de scaffold
    );//fin de material app
  }//fin de widget build
  Widget _items(String url, String producto) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.greenAccent,
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text('Personas que quiero',
                      style: TextStyle(fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}//fin de mi tarjeta
