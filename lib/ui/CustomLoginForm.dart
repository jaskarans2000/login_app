import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomLoginForm extends StatefulWidget {
  @override
  _CustomLoginFormState createState() => _CustomLoginFormState();
}

class LoginData{
  String username="";
  String Password="";
}

class _CustomLoginFormState extends State<CustomLoginForm> {

  final formKey= GlobalKey<FormState>();
  LoginData data=new LoginData();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: new Column(
        children: <Widget>[
          Center(
            child: Image.asset(
              "images/face.png",
              width: 90,
              height: 90,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: new InputDecoration(
                labelText: "Username",
                border: new OutlineInputBorder(
                 gapPadding: 3.3,
                  borderRadius: BorderRadius.circular(29),

                ),
                
              ),
              validator: (value){
                if(value.isEmpty){
                  return "Please enter username";
                }else{
                  data.username=value;
                }
              },
            ),
          ),Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
    obscureText: true,
              decoration: new InputDecoration(


                  labelText: "Password",
                  border: new OutlineInputBorder(
                    gapPadding: 3.3,
                    borderRadius: BorderRadius.circular(29),

                  )
              ),
            validator: (value){
      if(value.isEmpty)
        return "Please enter password";
      else
        data.Password=value;

            },),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: new Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    child: Text("Submit"),
                    onPressed: (){
                      if(formKey.currentState.validate())
                        {
                          setState(() {
                            data.username=data.username;
                          });
                          Scaffold.of(context).showSnackBar(SnackBar(content: Text("All is well"),));
                        }
                    },
                  ),
                  RaisedButton(
                    child: Text("Cancel"),
                    onPressed: (){
                      setState(() {
                        data.username="";
                      });
formKey.currentState.reset();
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child:
            data.username.isEmpty?Text(""):Text("Welcome ${data.username}",style: new TextStyle(fontSize: 29.5,fontWeight: FontWeight.w400,fontStyle: FontStyle.italic,color: Colors.white),)
    ,
            ),
          ),

        ],

      ),

    );
  }
}
