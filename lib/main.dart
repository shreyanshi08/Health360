import 'package:flutter/material.dart';
import 'mob.dart';

void main() {
  runApp(MaterialApp( home: MyApp(),));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  var FormKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(15),
            child:ListView(
              children:[
                const Padding(
                  padding: EdgeInsets.only(left:140,top:130),
                  child: Text("Login",style: TextStyle(color: Colors.black,fontSize: 35),
                  ),
                ),
              Form(
                key: FormKey,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                          labelText: 'User Name',
                            ),
                          validator: (value){
                          if(value!.isEmpty||!RegExp(r'^[a-z A-Z]+$').hasMatch(value!)){
                            return "Enter valid username";
                          }
                          else{
                            return null;
                          }
                        },
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
                Padding(padding: const EdgeInsets.only(left:140,top:10),
                child:GestureDetector(
                  child: const Text("Forgot Password?",
                    style: TextStyle(color: Colors.blue,fontSize: 13
                    ),
                  ),
                ),
                ),
                 Padding(padding: const EdgeInsets.only(left:5,top:10),
                   child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(100, 50)
                  ),
                  child: const Text('Login'),
                  onPressed: () {
                     FormKey.currentState!.validate();
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
                    side:const BorderSide(color: Colors.blue,width: 1.0),
                    minimumSize: const Size(330,40)
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
                     padding: const EdgeInsets.only(left:160,top:10),
                 child:GestureDetector(
                    child:const Text("Sign up?",style: TextStyle(color: Colors.blue,fontSize: 18,),),
                 )
                 ),
              ]
            ),
        ),
        ),
    );
  }
}



