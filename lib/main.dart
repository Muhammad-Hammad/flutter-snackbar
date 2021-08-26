import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Snackbar"),
        ),
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              content: Text("My first SnackBar!"),
              action: SnackBarAction(label: 'Undo', onPressed: () {}),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text('snackbar')),
    );
  }
}
