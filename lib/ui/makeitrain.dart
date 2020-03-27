import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MakeItRainState();
  }
}




class MakeItRainState extends State<MakeItRain> {

  var _moneyCounter = 0;

  void _onPressMoneyRain() {
    setState(() {
      _moneyCounter = _moneyCounter + 1000;
    });
  }

  void _clearCounter() {
    setState(() {
      _moneyCounter = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Make It Rain'),
          backgroundColor: Colors.lightGreen,
        ),
        body: new Container(
            child: new Column(
          children: <Widget>[
            new Center(
                child: new Text(
              'Get Rich!',
              style: new TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 29.9),
            )),
            new Expanded(
                child: new Container(
              child: Center(
                  child: new InkWell(
                child: new Text(
                  ('\$$_moneyCounter'),
                  style: new TextStyle(
                      color: _moneyCounter>10000?Colors.red:Colors.greenAccent,
                      fontSize: 50,
                      fontWeight: FontWeight.w800),
                ),
                onTap: _clearCounter,
              )),
            )),
            new Expanded(
                child: new Center(
                    child: new FlatButton(
                        color: Colors.lightGreen,
                        onPressed: _onPressMoneyRain,
                        padding: new EdgeInsets.all(20.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(50.0)),
                        child: new Text('Let It Rain! ',
                            style: new TextStyle(
                              fontSize: 20,
                            )))))
          ],
        )));
  }
}
