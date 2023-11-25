import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Setting",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
      ),
      body: Container(

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
                  Navigator.popUntil(context, (route) => route.isFirst);
                  Navigator.pushNamed(context, '/setting');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
