import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

late List<CameraDescription> availableCamerasList;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  availableCamerasList = await availableCameras();
  runApp(WhatsAppCloneApp());
}

class WhatsAppCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp Clone",
      theme: ThemeData(
        primarySwatch: Colors.teal,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color(0xff25D366), // WhatsApp 绿色
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: WhatsAppHomeScreen(cameras: availableCamerasList),
    );
  }
}

class WhatsAppHomeScreen extends StatelessWidget {
  final List<CameraDescription> cameras;

  WhatsAppHomeScreen({required this.cameras});

  
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
