import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.blue,
        child: Center(
            child: Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top:50.0),
                child: Column(children: <Widget>[ Row(children: <Widget>[
          Text(
            "Hello World",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                color: Colors.white, fontSize: 36.6, fontFamily: "Gugi"),
          ),
          Expanded(
            child: Text(
              "New Test Flutter01",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Colors.white, fontSize: 18.0, fontFamily: "Gugi"),
            ),
          ),
        ]
        ),
        SampleImageWidget(),
        SampleButton(),
        HelloYou(),
        ])
        )));
  }
}


class SampleImageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage flutterImage = AssetImage("assets/images/flutter.png");
    Image image = Image(image: flutterImage, width: 200.0, height: 300.0);
    return Container(child: image);
  }

}

class SampleButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text("Sample Button"),
        color: Colors.cyanAccent, 
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );
    return button;
  }

  void order(BuildContext context){

    var alert = AlertDialog(
      title: Text("Alert"),
      content: Text("Sample Button Clicked"),
    );

    showDialog(
      context: context,
      builder: (BuildContext context){
        return alert;
      }
    );

  }

}

class HelloYou extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HelloYouState();
  }

}

class _HelloYouState extends State<HelloYou>{
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          TextField(
            onChanged: (String string){
              setState(() {
                name = string;
              });
            },
          ),
          Text("Hello "+name+"!")
        ],
      ),
    );
  }

}