import 'package:flutter/material.dart';
import 'package:flutter_talks_design/src/pages/home/home_page.dart';
import 'widgets/create_account/create_account_widget.dart';
import 'widgets/recovery_account/recovery_account_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<StatefulWidget> {
  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.height*0.3,
                  height: MediaQuery.of(context).size.height*0.3,
                  child: ClipRRect(
                    
                    borderRadius: BorderRadius.circular(180.0),
                      child: Image.asset(
                        "images/Grape-logo.png",
                        fit: BoxFit.cover,
                      )),
                ),
                Text(
                  "Grape       ",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.purpleAccent,
                      fontWeight: FontWeight.w100,
                      fontSize: MediaQuery.of(context).size.width / 13),
                ),
                Text(
                  "       Fórum",
                  style: TextStyle(
                      color: Colors.purpleAccent,
                      fontWeight: FontWeight.w100,
                      fontSize: MediaQuery.of(context).size.width / 15),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _emailEditingController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      focusColor: Colors.purpleAccent,
                      filled: false,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                            BorderSide(color: Colors.purpleAccent, width: 1.0),
                      ),
                      hintText: "E-mail",
                      fillColor: Colors.purpleAccent,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _passwordEditingController,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Senha",
                      focusColor: Colors.purpleAccent,
                      hoverColor: Colors.purpleAccent,
                      filled: false,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.purpleAccent),
                      ),
                      hintText: "Senha",
                      fillColor: Colors.purpleAccent,
                    ),
                  ),
                ),
                FlatButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => HomePage()));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      color: Colors.green,
                      child: Container(
                        decoration: BoxDecoration(),
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Entrar",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => NewAccount()));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: Colors.blue,
                    child: Container(
                      decoration: BoxDecoration(),
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Cadastrar",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                RecoveryAccount()));
                  },
                  child: Text(
                    "Recuperar conta",
                    style: TextStyle(
                        color: Colors.red,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
