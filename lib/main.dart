import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/ui/CustomLoginForm.dart';

void main()=>runApp(Login());

class Login extends StatelessWidget {
  final String AppTitle="Login";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppTitle,
        home:Scaffold(
          appBar: new AppBar(
            title: new Text(AppTitle),
            centerTitle: true,
            backgroundColor: Colors.blue,

          ),
          backgroundColor: Colors.blueGrey,
          body: new CustomLoginForm(),

        )
    );
  }
}

