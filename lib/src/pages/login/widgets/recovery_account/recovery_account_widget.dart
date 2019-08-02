import 'package:flutter/material.dart';

class RecoveryAccount extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RecoveryAccountState();
  }
}

class _RecoveryAccountState extends State<StatefulWidget> {
  TextEditingController _emailEditingController = TextEditingController();

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
        leading: BackButton(
          color: Colors.purpleAccent,
        ),
        centerTitle: true,
        title: Text(
          "GrapeForum",
          style: TextStyle(
              color: Colors.purpleAccent, fontWeight: FontWeight.w100),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FlatButton(
            onPressed: () {
              _scaffoldKey.currentState.showSnackBar(
                  SnackBar(content: Text("E-mail de recuperação enviado")));
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
                  "Recuperar conta",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Informe o e-mail para recuperação:",
              textAlign: TextAlign.start,
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
        ],
      ),
    );
  }
}
