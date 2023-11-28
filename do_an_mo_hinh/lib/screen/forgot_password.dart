import 'package:flutter/material.dart';

class forgot_pass extends StatefulWidget {
   forgot_pass({super.key});
   String tb = "";
   final txt_us = TextEditingController();
  @override
  State<forgot_pass> createState() => _forgot_passState();
}

class _forgot_passState extends State<forgot_pass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:SingleChildScrollView(child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          SizedBox(height: 30,),
              Icon(
                Icons.lock_open,size: 100,
              ),
              SizedBox(height: 75,),
          ////Text khới đầu//////////
          Text("Tìm lại tài khoản!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 36),),

          SizedBox(height: 10,),

          Text("Nhập cho đúng Gmail nha mày:))",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20),textAlign: TextAlign.center,),

            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Nhập email',
                    ),
                    controller: widget.txt_us,
                  ),
                ),                
              ),             
            ),

            SizedBox(height: 10,),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                  Colors.blue.withOpacity(0.8),
                ),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)
                ))
              ),
              onPressed: () =>{
                setState(() {
                  ////chuyển trang//////
                            // Navigator.popUntil(context, (route) => route.isFirst);
                            // Navigator.pushNamed(context, '/Home');
                        })
              }, child: Padding(padding: EdgeInsets.fromLTRB(50, 13, 50, 13),child: Text('Tìm'), 
              ),
              ),const Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                      Text(widget.tb,style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
        ]),
      ))
    );
  }
}