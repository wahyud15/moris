import 'package:flutter/material.dart';
import 'package:moris/progresProp_page.dart';
import 'package:moris/user_model.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String token = "no token";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  hintText: "Username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                controller: usernameController,
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                controller: passwordController,
                obscureText: true,
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              RaisedButton(
                child: Text("Login"),
                shape: StadiumBorder(),
                color: Colors.blue,
                onPressed: () {
                  User.connectToAPI(
                          usernameController.text, passwordController.text)
                      .then((value) {
                    if (value.token.toString() == "QpwL5tke4Pnpja7X4") {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return ProgresProvinsi();
                      }));
                    }
                  });
                },
              ),
              Text(token),
            ],
          ),
        ),
      ),
    );
  }
}
