
import 'package:example/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'forgetpwd.dart';
import 'mob.dart';

void main() {
  runApp(MaterialApp( home: MyApp(),));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(15),
            child:Container(
              child: ListView(
                children:[
                  const Padding(
                    padding: EdgeInsets.only(left:140,top:130),
                    child: Text("Login",style: TextStyle(color: Colors.black,fontSize: 35),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                    labelText: 'User Name',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: ' Enter password',
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left:140,top:10),
                  child:GestureDetector(
                    child: const Text("Forgot Password?",style: TextStyle(color: Colors.blue,fontSize: 13),),
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) => Forgetpassword()
                      ),
                      );
                    },
                  ),
                  ),
                  SizedBox(
                    width: 60.0,
                    height: 40.0,
                  child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(330, 40)
                    ),
                    child: const Text('Login'),
                    onPressed: () {
                      print('Hello');
                    },
                  ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:160,top:50),
                    child: Text("or login with",
                      style: TextStyle(color: Colors.black,fontSize: 10),
                    ),
                  ),
                  OutlinedButton(
                    style: ElevatedButton.styleFrom(
                      side:BorderSide(color: Colors.blue,width: 1.0),
                      minimumSize: Size(330,40)
                    ),
                    child: const Text('Mobile Number'),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) => Mobile(),
                      ),
                      );
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:150,top:110),
                    child: Text("Don't have an account?",style: TextStyle(color: Colors.black,fontSize: 10),
                    ),
                  ),
                   Padding(
                       padding: EdgeInsets.only(left:160,top:10),
                   child:GestureDetector(
                      child:Text("Sign up?",style: TextStyle(color: Colors.blue,fontSize: 18,),),
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) => const Signup()
                      ),
                      );
                    },
                   )
                   ),]
              ),
            ),
        ),
        ),
    );
  }
}



