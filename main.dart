import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main () => runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool PasswordVisable = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, left: 120, right: 120),
              child: Image.asset("asserts/images/M.png"),

            ),
            SizedBox(height: 40),
            Container(
              child: Card(
                  elevation: 20,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              icon: Icon(Icons.person),
                              labelText: "Email"
                          ),
                        ),
                        SizedBox(height: 20,),
                        TextField(
                          obscureText: PasswordVisable,
                          decoration: InputDecoration(
                            labelText: "Password",
                            icon: Icon(Icons.lock),
                            suffixIcon: IconButton(
                              icon: Icon(
                                  PasswordVisable ? Icons.visibility : Icons
                                      .visibility_off),
                              onPressed: () {
                                setState(() {
                                  PasswordVisable = !PasswordVisable;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 25,),
                        Text("Forget Password ?", textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400
                          ),),
                        SizedBox(height: 25,),
                        buildFlatButton("Login"),
                        SizedBox(height: 20,),
                      ],
                    ),)
              ),

            ),
            SizedBox(height: 20,),
            Divider(height: 20, color: Colors.black,),
            SizedBox(height: 15,),
            Text("Don't Have Accont ? Sign In"),
            buildFlatButton("Facebock"),
            buildFlatButton("Google")

          ],
        ),
      ),

    );
  }

  FlatButton buildFlatButton(String text) {
    return FlatButton(
      onPressed: () {},
      child: Text(text, style: TextStyle(fontSize: 20),),
      padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      color: Colors.blue,
      textColor: Colors.white,
    );
  }
}




