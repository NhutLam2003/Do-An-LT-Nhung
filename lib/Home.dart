import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "MY HOT Vinhome",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40), // Kích thước tối ưu cho TabBar
            child: Container(
              color: Colors.orange,
              child: const TabBar(
                tabs: [
                  Tab(text: 'Tất cả'),
                  Tab(text: 'Sảnh'),
                  Tab(text: 'Phòng'),
                  Tab(text: 'Khác'),
                ],
                indicatorColor: Colors.black,
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Placeholder(),
            Placeholder(),
            Placeholder(),
            Placeholder(),
          ],
        ),

        bottomNavigationBar: Container(
          color: Colors.orange,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.home, color: Colors.white),
                onPressed: () {
                  if (ModalRoute.of(context)?.settings.name != '/home') {
                    Navigator.pushReplacementNamed(context, '/home');
                  }
                },
              ),
              IconButton(
                icon: Icon(Icons.settings, color: Colors.white),
                onPressed: () {
                   if (ModalRoute.of(context)?.settings.name != '/setting') {
                    Navigator.pushReplacementNamed(context, '/setting');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

