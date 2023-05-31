import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_demo/demoJson/autoMethod/auto_serialize.dart';
import 'package:json_demo/demoJson/manualMethod/manual_serialize.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.tealAccent,
          useMaterial3: true),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "App Bar",
          style: GoogleFonts.sourceSerifPro(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              textStyle: Theme.of(context).textTheme.headlineLarge,
              color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
      ),
      body:const Autoserialize(),
    );
  }
}
