import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:paw_prints/Pages/HomePage.dart';
import 'package:paw_prints/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF21899C),
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
