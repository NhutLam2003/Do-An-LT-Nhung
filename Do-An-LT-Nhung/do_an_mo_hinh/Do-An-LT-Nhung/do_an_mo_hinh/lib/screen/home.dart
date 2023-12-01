import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';


class Home extends StatelessWidget {
   Home({super.key});
  void signin(){
    FirebaseAuth.instance.signOut();
    }

  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('IOT App'),
        actions: [
          
          IconButton(onPressed: () async{
            await GoogleSignIn().signOut();
            FirebaseAuth.instance.signOut();
          }, icon: Icon(Icons.logout_rounded))
        ],
      ),
      body:  Center(child: Text("Login:"+user.email!),),
    );
  }
}
