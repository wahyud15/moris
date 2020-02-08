import 'package:flutter/material.dart';
import 'package:moris/entri_page.dart';

class ProgresProvinsi extends StatefulWidget {
  @override
  _ProgresProvinsiState createState() => _ProgresProvinsiState();
}

class _ProgresProvinsiState extends State<ProgresProvinsi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Progres Provinsi NTB"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Lombok Barat", style: TextStyle(fontSize: 20)),
            subtitle: Text("40 KK", style: TextStyle(fontSize: 15,)),
            dense: true,
          ),
          ListTile(
            title: Text("Lombok Tengah", style: TextStyle(fontSize: 20)),
            subtitle: Text("40 KK", style: TextStyle(fontSize: 15,)),
            dense: true,
          ),
          ListTile(
            title: Text("Lombok Timur", style: TextStyle(fontSize: 20)),
            subtitle: Text("40 KK", style: TextStyle(fontSize: 15,)),
            dense: true,
          ),
          ListTile(
            title: Text("Sumbawa", style: TextStyle(fontSize: 20)),
            subtitle: Text("40 KK", style: TextStyle(fontSize: 15,)),
            dense: true,
          ),
          ListTile(
            title: Text("Dompu", style: TextStyle(fontSize: 20)),
            subtitle: Text("40 KK", style: TextStyle(fontSize: 15,)),
            dense: true,
          ),
          ListTile(
            title: Text("Bima", style: TextStyle(fontSize: 20)),
            subtitle: Text("40 KK", style: TextStyle(fontSize: 15,)),
            dense: true,
          ),
          ListTile(
            title: Text("Sumbawa Barat", style: TextStyle(fontSize: 20)),
            subtitle: Text("40 KK", style: TextStyle(fontSize: 15,)),
            dense: true,
          ),
          ListTile(
            title: Text("Lombok Utara", style: TextStyle(fontSize: 20)),
            subtitle: Text("40 KK", style: TextStyle(fontSize: 15,)),
            dense: true,
          ),
          ListTile(
            title: Text("Kota Mataram", style: TextStyle(fontSize: 20)),
            subtitle: Text("40 KK", style: TextStyle(fontSize: 15,)),
            dense: true,
          ),
          ListTile(
            title: Text("Kota Bima", style: TextStyle(fontSize: 20)),
            subtitle: Text("40 KK", style: TextStyle(fontSize: 15,)),
            dense: true,
          ),
          ListTile(
            title: Text("Nusa Tenggara Barat", style: TextStyle(fontSize: 20)),
            subtitle: Text("40 KK", style: TextStyle(fontSize: 15,)),
            dense: true,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.lightBlue,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return EntriSPO2020();
            }));
          }),
    );
  }
}
