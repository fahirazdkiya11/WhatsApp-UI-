import 'package:flutter/material.dart';
import 'package:whatsapp/tema.dart';
import 'package:whatsapp/widgets/chat_view.dart';

class WhatsAppPage extends StatefulWidget {
  const WhatsAppPage({super.key});

  @override
  State<WhatsAppPage> createState() => _WhatsAppPageState();
}

class _WhatsAppPageState extends State<WhatsAppPage>
    with SingleTickerProviderStateMixin {
  var tabs = const [
    Tab(
      icon: Icon(Icons.camera_alt),
    ),
    Tab(
      text: 'CHATS',
    ),
    Tab(
      text: 'STATUS',
    ),
    Tab(
      text: 'CALLS',
    ),
  ];

  TabController? tabController;

  IconData fabIcon = Icons.message;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: tabs.length,
      vsync: this,
    );
    tabController?.addListener(() {
      setState(() {
        switch (tabController?.index) {
          case 0:
            fabIcon = Icons.camera_alt;
            break;
          case 1:
            fabIcon = Icons.message;
            break;
          case 2:
            fabIcon = Icons.camera;
            break;
          case 3:
            fabIcon = Icons.call;
            break;
          default:
        }
      });
    });
    tabController?.index = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
        ),
        backgroundColor: whatsAppGreen,
        bottom: TabBar(
          tabs: tabs,
          controller: tabController,
          indicatorColor: Colors.white,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.search,
            ),
          ),
          Icon(
            Icons.more_vert,
          ),
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          // Camera
          Center(
            child: Icon(
              Icons.camera_alt,
            ),
          ),
          // Chat
          ChatView(),
          // Status
          // Calls
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: whatsAppLightGreen,
          child: Icon(fabIcon),
        ),
    );
  }
}
