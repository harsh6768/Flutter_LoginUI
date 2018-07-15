import 'package:flutter/material.dart';
import 'package:simplepractice/register.dart';
import 'package:simplepractice/home.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyFisrtPage(),
    );
  }
}

class MyFisrtPage extends StatefulWidget {
  @override
  _MyFisrtPageState createState() => new _MyFisrtPageState();
}

class _MyFisrtPageState extends State<MyFisrtPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body:new Container(
          // to set the background image we need to set using BoxDecoration
            decoration: new BoxDecoration(
            image: new DecorationImage(
                 image: new AssetImage("assets/log_in.png"),
                 fit: BoxFit.cover,
                 ),
               ),
          //to set the padding we can set the alignment of the layouts in our page
          child:new Padding(
              padding: new EdgeInsets.only(top:200.0),   //Edgeinsets set the padding in specific direction where you want to align your layout
            child: new ListView(
              children: <Widget>[
                new ListTile(
                  // to set the input for the user we use TextField in Flutter like we use EditText in Android
                  title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Enter Username",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                new ListTile(
                  title:new TextField(
                    decoration: new InputDecoration(
                      hintText: "Enter Password",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                new ListTile(
                  title: new RaisedButton(
                      color: Colors.greenAccent,
                      splashColor: Colors.red,
                      elevation: 4.0,
                      child: new Center(child: new Text("SignIn"),),
                      onPressed: (){
                        var route=new MaterialPageRoute(
                            builder: (BuildContext context)=> new MyHome()
                        );
                        Navigator.of(context).push(route);
                      }
                  ),
                ),
               new ListTile(
                  title: new RaisedButton(
                      color: Colors.red,
                      elevation: 4.0,
                      splashColor: Colors.greenAccent,
                      child: new Center(child: new Text("Create Account"),),
                      onPressed: (){
                        var route=new MaterialPageRoute(
                            builder:(BuildContext context) => new MyRegister()
                        );
                        Navigator.of(context).push(route);
                      }
          ),
          ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

