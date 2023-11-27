import 'package:do_an_mo_hinh/screen/forgot_password.dart';
import 'package:do_an_mo_hinh/screen/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({super.key});
  String tb = "";
  final txt_us = TextEditingController();
  final txt_pass = TextEditingController();

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
       
        child: Center( 
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 25,),
              Icon(
                Icons.home_work,size: 100,
              ),
              SizedBox(height: 75,),
          ////Text khới đầu//////////
          Text("Hello Again!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 36),),

          SizedBox(height: 10,),

          Text("Chào mừng bạn quay trở về nhà!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20),),

            SizedBox(height: 50,),
            ////////TextField nhập email đăng nhập///////////
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
                      hintText: 'Nhập emal hoặt số điện thoại',
                    ),
                    controller: widget.txt_us,
                  ),
                ),                
              ),             
            ),
             /////////TextField nhập Password///////////
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding:  EdgeInsets.only(left:20.0),
                  child: TextField(
                    obscureText: true,///ẩn mật khẩu
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Nhập mật khẩu',
                    ),
                    controller: widget.txt_pass,
                  ),
                ),
              ),
            ),
            /////Nút đăng nhập/////////
            
            SizedBox(height: 10,),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0) ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                onTap: () {Forgot_pass(context);},
                child:
                Text('Quên mật khẩu?',style: TextStyle(color: Colors.grey[600]),),
                )
              ],
            ),),


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

                 /////Kiểm tra mật khẩu///////
                setState(() {
                          if(widget.txt_us.text.isEmpty || widget.txt_pass.text.isEmpty){
                            widget.tb = "Vui lòng nhập đầy đủ thông tin";
                          }
                          else if(widget.txt_pass.text.length < 6){
                            widget.tb = "Vui lòng nhập lại mật khẩu, kí tự tối thiểu là 6";
                          }
                          else if(widget.txt_pass.text.length > 32){
                            widget.tb = "Vui lòng nhập lại mật khẩu, kí tự tối đa là 32";
                          }else if(widget.txt_pass.text.length > 32){
                            widget.tb = "Vui lòng nhập lại mật khẩu, kí tự tối đa là 32";
                          }
                          else if(!widget.txt_pass.text.contains(RegExp(r'[!@#\$%^&*()_+={}\[\]:;<>,.?~]'))){
                            widget.tb = "  Vui lòng nhập lại mật khẩu, kí tự phải có 1 kí tự đặc biệt";
                          }else if(widget.txt_us.text.length < 6){
                            widget.tb = "Vui lòng nhập đủ 6 ký tự";
                          }
                          else{
                            Navigator.popUntil(context, (route) => route.isFirst);
                            Navigator.pushNamed(context, '/Home');
                            widget.tb = "Đăng nhập thành công";
                          }
                        })
              }, child: Padding(padding: EdgeInsets.fromLTRB(50, 13, 50, 13),child: Text('Đăng nhập'), 
              ),
              ),const Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                      Text(widget.tb,style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),

            
            /////Chưa có tài khoản//////
          
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Chưa có tài khoản? ',style: TextStyle(fontWeight: FontWeight.bold),),
                GestureDetector(
                onTap: () {Register(context);},
                child:
                Text('Đăng ký ngay ',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
            )],
            ),
            SizedBox(height: 30,),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img/Facebook.png',height: 50,
              ),
              SizedBox(width: 20,),

              Image.asset(
                'assets/img/google.png',height: 50,
              ),
            ],
           )
        ],),
      )
      )
    );
  }
  ////chuyển trang khi bấm đăng ký/////
  void Register(BuildContext context){
      Navigator.push(  
      context, 
      MaterialPageRoute(builder: (context)=>register()));
  }
  void Forgot_pass(BuildContext context){
      Navigator.push(  
      context, 
      MaterialPageRoute(builder: (context)=>forgot_pass()));
  }
}
