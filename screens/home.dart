import 'package:flutter/material.dart';


class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final _formkey = GlobalKey<FormState>();
  var name = '';
  var password = '';
  var email = '';
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Name :',
                    labelStyle: TextStyle(fontSize: 20),
                    errorStyle: TextStyle(fontSize: 20, color: Color.fromARGB(255, 214, 7, 24))),
                controller: nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Enter The Name";
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Email :', labelStyle: TextStyle(fontSize: 20)),
                controller: emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Enter The Email";
                  } else if (!value.contains('@gmail.com')) {
                    return 'Please Enter The Valid Email';
                  }
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password :',
                    labelStyle: TextStyle(fontSize: 20)),
                controller: passController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Enter The Password";
                  }
                },
              ),
              ElevatedButton(
                  onPressed: (() {
                    if (_formkey.currentState!.validate()) {
                      setState(() {
                        name = nameController.text;
                        password = passController.text;
                        email = emailController.text;
                      });
                    }
                  }),
                  child: Text('Submit')),
              Text('NAME =  $name'),
              Text('EMAIL =  $email'),
              Text('PASSWORD =  $password')
            ],
          ),
        ));
  }
}
