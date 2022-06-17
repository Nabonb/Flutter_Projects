import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(MYAPP());
}

class MYAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MY APP',
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'RANDOM APPLICATION',
              style: TextStyle(fontSize: 20, backgroundColor: Colors.black54),
            ),
            backgroundColor: Colors.indigoAccent,
          ),
          
          body: MyWidget()
    ));
  }
}
