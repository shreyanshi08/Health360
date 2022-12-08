import 'package:flutter/material.dart';


class Forgetpassword extends StatelessWidget {
  const Forgetpassword({Key? key}) : super(key: key);
  static const String _title = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController EmailController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool _isValid = false;

  void _saveForm() {
    setState(() {
      _isValid = _formkey.currentState!.validate();
    });
  }



  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(15,250,15,0),
        child: Form(
            key: _formkey,

            child:ListView(
              children:[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 35)
                      ,
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Enter your Email Address in the form below and we will send you further instruction on how to reset your password',
                      style: TextStyle(fontSize: 15)
                      ,
                    )),

                Container(

                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: EmailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      // Check if this field is empty
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }

                      // using regular expression
                      if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                        return "Please enter a valid email address";
                      }

                      // the email is valid
                      return null;
                    },


                  ),
                ),

                ElevatedButton(
                    onPressed: _saveForm, child: const Text('Send OTP')),
              ],

            )     ));
  }
}