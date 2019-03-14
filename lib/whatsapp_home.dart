import 'package:flutter/material.dart';
import "whatsapp_screens/call_screen.dart";
import 'whatsapp_screens/camera_screen.dart';
import 'whatsapp_screens/chat_screen.dart';
import "whatsapp_screens/status_screen.dart";

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,

        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_vert),
          )
        ],
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          indicatorColor: Colors.white,
          labelPadding: EdgeInsets.only(right: 10.0, left: 10.0),

          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CONVERSAS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CHAMADAS",
              //child: Text("CHAMADAS", style: TextStyle(fontStyle: FontStyle.italic),),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
    floatingActionButton: FloatingActionButton(
    onPressed: () => print("Contatos"),
    backgroundColor: Theme.of(context).accentColor,
    child: Icon(Icons.message, color: Colors.white, size: 25.0,),
    ),
    );
  }
}
