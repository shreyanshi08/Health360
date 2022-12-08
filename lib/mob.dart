import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Mobile extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Mobile> {
  var _myFormKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
              children:[
                const Padding(
                  padding: EdgeInsets.only(left:140,top:130),
                  child: Text("Login",style: TextStyle(color: Colors.black,fontSize: 30),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left:140,top:10),
                  child: Text("Enter your mobile number",style: TextStyle(color: Colors.black,fontSize: 15),
                  ),
                ),
                Form(
                  key: _myFormKey,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(10),
                      ],
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Mobile Number',
                      ),
                      validator: (value){
                        if(value!.isEmpty||!RegExp(r'^[6,7,8,9]+$').hasMatch(value!)){
                          return "Enter valid mobile number";
                        }
                        else{
                          return null;
                        }
                      },
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(100, 50)
                  ),
                  child: const Text('Send OTP'),
                  onPressed: () {
                    _myFormKey.currentState?.validate();
                  },
                ),

              ]
          )
      ),
    );
  }
}

