import 'package:flutter/material.dart';

class NewAccount extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NewAccountState();
  }
}

class _NewAccountState extends State<StatefulWidget> {
  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();
  TextEditingController _nameEditingController = TextEditingController();
  TextEditingController _passwordConfirmEditingController =
      TextEditingController();

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "GrapeForum",
          style: TextStyle(
              color: Colors.purpleAccent, fontWeight: FontWeight.w200),
        ),
        centerTitle: true,
        leading: BackButton(
          color: Colors.purpleAccent,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FlatButton(
            onPressed: () {
              if (_passwordConfirmEditingController.text.toString() ==
                  _passwordEditingController.text.toString()) {
                _scaffoldKey.currentState.showSnackBar(
                    SnackBar(content: Text("Conta criada com sucesso!"), ));
              } else {
                _scaffoldKey.currentState.showSnackBar(
                    SnackBar(content: Text("As senhas não conferem!")));
              }
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(90.0)),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(90.0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Criar conta",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _nameEditingController,
              keyboardType: TextInputType.text,
              autocorrect: true,
              decoration: InputDecoration(
                labelText: "Nome",
                focusColor: Colors.purpleAccent,
                filled: false,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide:
                      BorderSide(color: Colors.purpleAccent, width: 1.0),
                ),
                hintText: "Nome",
                fillColor: Colors.purpleAccent,
              ),
            ),
          ),
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
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                focusColor: Colors.purpleAccent,
                filled: false,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide:
                      BorderSide(color: Colors.purpleAccent, width: 1.0),
                ),
                hintText: "Senha",
                fillColor: Colors.purpleAccent,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              obscureText: true,
              controller: _passwordConfirmEditingController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Senha",
                focusColor: Colors.purpleAccent,
                filled: false,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide:
                      BorderSide(color: Colors.purpleAccent, width: 1.0),
                ),
                hintText: "Senha",
                fillColor: Colors.purpleAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
