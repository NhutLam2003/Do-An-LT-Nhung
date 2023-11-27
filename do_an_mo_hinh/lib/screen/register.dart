import 'package:do_an_mo_hinh/screen/login.dart';
import 'package:flutter/material.dart';


class register extends StatefulWidget {
  register({super.key});
  String tb = "";
  final txt_us = TextEditingController();
  final txt_pass = TextEditingController();
    final txt_pass2 = TextEditingController();
  final txt_sdt = TextEditingController();
  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
       
        child: Center( 
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              Icon(
                Icons.key,size: 100,
              ),
              SizedBox(height: 75,),
          ////Text khới đầu//////////
          Text("WELCOME!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 36),),

          SizedBox(height: 10,),

          Text("Chào mừng bạn đã đặt chân đến ngôi nhà mới của mình!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20),textAlign: TextAlign.center,),

            SizedBox(height: 30,),
            ////////Tên người dùng////////////
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
                      hintText: 'Nhập tên người dùng',
                    ),
                  ),
                ),                
              ),             
            ),
            ///////Nhập số điện thoại///////////
             SizedBox(height: 10,),
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
                      hintText: 'Nhập email',
                    ),
                    controller: widget.txt_us,
                  ),
                ),                
              ),             
            ),
            ///////Nhập số điện thoại///////////
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
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Nhập số điện thoại',
                    ),
                    controller: widget.txt_sdt,
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
            //////////Nhập lại mật khẩu//////////
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
                      hintText: 'Nhập lại mật khẩu',
                    ),
                    controller: widget.txt_pass2,
                  ),
                ),
              ),
            ),
            /////Nút đăng nhập/////////
           
            
            
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
                          }
                          else if(!widget.txt_pass.text.contains(RegExp(r'[!@#\$%^&*()_+={}\[\]:;<>,.?~]'))){
                            widget.tb = "  Vui lòng nhập lại mật khẩu, kí tự phải có 1 kí tự đặc biệt";
                          }else if(widget.txt_us.text.length < 6){
                            widget.tb = "Vui lòng nhập đủ 6 ký tự";
                          }else if(widget.txt_sdt.text.length < 10 || widget.txt_sdt.text.length >10){
                            widget.tb = " Số điện thoại nhập không đúng";
                          }else if(widget.txt_pass.text != widget.txt_pass2.text){
                            widget.tb = " Mật khẩu không trùng";
                          }
                          else{
                            Navigator.popUntil(context, (route) => route.isFirst);
                            Navigator.pushNamed(context, '/Home');
                            widget.tb = "Đăng ký thành công";
                          }
                        })
              }, child: Padding(padding: EdgeInsets.fromLTRB(50, 13, 50, 13),child: Text('Đăng ký'), 
              ),
              ),const Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                      Text(widget.tb,style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),

            
            /////Chưa có tài khoản//////
          
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                onTap: () {login(context);},
                child:
                Text('Quay lại đăng nhập',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
            )],
            ),
           
        ],),
      )
      )
    );
  }
  ////chuyển trang khi bấm đăng ký/////
  void login(BuildContext context){
      Navigator.push(  
      context, 
      MaterialPageRoute(builder: (context)=>Login()));
  }
}