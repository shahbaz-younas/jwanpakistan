
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
@override
 State<StatefulWidget> createState() {
   // TODO: implement createState
   return LoginScreenState();
 }
}

class LoginScreenState extends State <LoginScreen> {
 final _formKey = GlobalKey<FormState>();
 final _scaffoldKey = GlobalKey<ScaffoldState>();

 String _email;
 String _password;

 @override
   Widget build(BuildContext context) {
     // TODO: implement build
     return new Scaffold(
       key: _scaffoldKey,
       appBar: new AppBar(
         title: new Text("Login")
       ),
       body: new Container(
         padding: const EdgeInsets.all(20.0),
         child: formSetup(context)
       ),
     );
   }

   Widget formSetup(BuildContext context){
     return new Form(
           key: _formKey,
           child: new Column(
             children: <Widget>[
               new TextFormField(
                 decoration: InputDecoration(
                   hintText: "aa@bb.com",
                   labelText: "Email"                   
                 ),
                 keyboardType: TextInputType.emailAddress,
                 validator: (val){
                     if (val.length == 0)
                       return "Please enter email";                     
                     else if (!val.contains("@"))
                       return "Please enter valid email";                     
                     else
                       return null; 
                   },
                   onSaved: (val)=>_email=val,
               ),
               new TextFormField(
                 decoration: InputDecoration(
                   hintText: "Password",
                   labelText: "Password"                   
                 ),      
                 obscureText: true,          
                 validator: (val){
                     if (val.length == 0)
                       return "Please enter password";                     
                     else if (val.length <= 5)
                       return "Your password should be more then 6 char long";                     
                     else
                       return null; 
                   },
                   onSaved: (val)=>_password=val,
               ),
               new Padding(
                 padding: const EdgeInsets.only(top: 20.0),
               ),
               new RaisedButton(
                 child: new Text("Submit"),
                 onPressed: (){
                   if (_formKey.currentState.validate()) {
                     _formKey.currentState.save();
                     _scaffoldKey.currentState.showSnackBar(new SnackBar(
                       content: new Text("Your email: $_email and Password: $_password"),
                     ));
                   }
                 },
                 color: Colors.blue,
                 highlightColor: Colors.blueGrey,                 
               )
             ],
           ),
         );
   }
}
