import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});
  void signin(){
    FirebaseAuth.instance.signOut();
    }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('IOT App'),
        actions: [
          IconButton(onPressed: signin, icon: Icon(Icons.logout_rounded))
        ],
      ),
      
    );
  }
}
