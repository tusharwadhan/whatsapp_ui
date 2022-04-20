import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/chat.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  late TabController  _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4,initialIndex: 1, vsync: this)
    ..addListener(() {
      setState(() {});
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {  },),
          IconButton(icon: const Icon(Icons.more_vert_outlined), onPressed: () {  },),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.camera_alt_outlined),),
            Tab(text: "CHATS",),
            Tab(text: "STATUS",),
            Tab(text: "CALLS",),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Text(""),
          Chat(),
          Text(""),
          Text(""),
        ],
      )
    );
  }
}