import 'package:flutter/material.dart';
import 'package:simplepractice/main.dart';
import 'package:simplepractice/home.dart';

void main() => runApp(new MyRegister());

class MyRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new _MyRegister(),
    );
  }
}
class _MyRegister extends StatefulWidget {
  @override
  __MyRegisterState createState() => new __MyRegisterState();
}

class __MyRegisterState extends State<_MyRegister> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body:new Container(
          // to set the background image we need to set using BoxDecoration
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/flutter_reg.jpeg"),
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
                      hintText: "Enter Email-Id",
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
                      child: new Center(child: new Text("SignUp"),),
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
                      child: new Center(child: new Text("Already Have an Account?"),),
                      onPressed: (){
                        var route=new MaterialPageRoute(
                            builder:(BuildContext context) => new MyApp()
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

























