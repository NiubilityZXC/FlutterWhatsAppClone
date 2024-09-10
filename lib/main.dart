import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutterwhatsapp/whatsapp_home.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;
late List<CameraDescription> availableCamerasList;

Future<Null> main() async {
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(new MyApp());
  availableCamerasList = await availableCameras();
  runApp(WhatsAppCloneApp());
}

class MyApp extends StatelessWidget {
class WhatsAppCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "WhatsApp",
      theme: new ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
    return MaterialApp(
      title: "WhatsApp Clone",
      theme: ThemeData(
        primarySwatch: Colors.teal,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color(0xff25D366), // WhatsApp 绿色
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: new WhatsAppHome(cameras:cameras),
      home: WhatsAppHomeScreen(cameras: availableCamerasList),
    );
  }
}

class WhatsAppHomeScreen extends StatelessWidget {
  final List<CameraDescription> cameras;

  WhatsAppHomeScreen({required this.cameras});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp Home'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text(
          'Welcome to WhatsApp Clone!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
