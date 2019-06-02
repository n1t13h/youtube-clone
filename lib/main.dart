import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Tabs.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _changeTheme=false;
  Future _read() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'isdark';
    final value = prefs.getBool(key);
    setState(() {

     _changeTheme=value; 
    });
  }
  @override
  void initState() {
    super.initState();
    _read();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Youtube",
      debugShowCheckedModeBanner: false,
      theme: _changeTheme==true?ThemeData.dark():ThemeData(primaryColor: Colors.white, accentColor: Colors.black),
      home: MyTabs(),
    );
  }
}
