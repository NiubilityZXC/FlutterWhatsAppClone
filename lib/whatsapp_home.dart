import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutterwhatsapp/pages/call_screen.dart';
import 'package:flutterwhatsapp/pages/camera_screen.dart';
import 'package:flutterwhatsapp/pages/chat_screen.dart';
import 'package:flutterwhatsapp/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  final List<CameraDescription> cameras;
  const WhatsAppHome({Key? key, required this.cameras}) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool showFab = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController.addListener(() {
      setState(() {
        showFab = _tabController.index == 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const <Widget>[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ],
        ),
        actions: <Widget>[
          const Icon(Icons.search),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
          ),
          const Icon(Icons.more_vert),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraScreen(cameras: widget.cameras),
          const ChatScreen(),
          const StatusScreen(),
          const CallsScreen(),
        ],
      ),
      floatingActionButton: showFab
          ? FloatingActionButton(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              child: const Icon(
                Icons.message,
                color: Colors.white,
              ),
              onPressed: () => print("open chats"),
            )
          : null,
    );
  }
}
