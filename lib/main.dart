import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:practicafirebase/screens/products_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Firebase'),
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.add))
          ],
        ),
        body: ListProducts(),
      )
    );
  }
}