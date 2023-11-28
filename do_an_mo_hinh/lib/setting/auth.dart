import 'package:do_an_mo_hinh/screen/home.dart';
import 'package:do_an_mo_hinh/screen/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class auth extends StatelessWidget {
  const auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
        if(snapshot.hasData){
          return const Home();
      }else{
        return  Login();
      }}),
    );
  }
}