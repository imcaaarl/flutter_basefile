import 'package:base/util/Router.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15.0),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8.0),
                child: Image.asset('assets/logo.gif'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 15.0),
                child: Text(
                  "Meter Reader",
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                child: generateTextField("Username"),
              ),
              Container(
                child: generateTextField("Password"),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(8.0, 15.0, 10.0, 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    InkWell(
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              InkWell(
                child: buildLoginButton(),
                onTap: () =>
                    Navigator.pushReplacementNamed(context, landingRoute),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget generateTextField(_texthint) {
    return Container(
      padding: EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 5.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: _texthint,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 18.0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          prefixIcon:
              _texthint == "Username" ? Icon(Icons.person) : Icon(Icons.lock),
          suffixIcon: _texthint == "Password"
              ? IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility_off),
                )
              : null,
        ),
      ),
    );
  }

  Widget buildLoginButton() {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 50.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35.0),
        color: Theme.of(context).accentColor,
      ),
      child: Center(
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
