import 'package:flutter/material.dart';

class EntriSPO2020 extends StatefulWidget {
  @override
  _EntriSPO2020State createState() => _EntriSPO2020State();
}

class _EntriSPO2020State extends State<EntriSPO2020> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entri SP Online 2020"),
      ),
      body: ListView(children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  hintText: "Nama KRT",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              TextField(
                decoration: InputDecoration(
                  hintText: "Alamat",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                maxLines: 7,
              ),
              RaisedButton(
                  child: Text("Submit"),
                  shape: StadiumBorder(),
                  color: Colors.lightBlue,
                  onPressed: () {}),
            ],
          ),
        ),
      ]),
    );
  }
}
