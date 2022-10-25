import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:baitap/Dangky.dart';

class dangnhap extends StatelessWidget {
  dangnhap({super.key});
  var _formkey = GlobalKey<FormState>();
  var _userNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Row( crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                    ],
                  ),

                  Row( crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          child: TextButton(
                            child: Text("Quen mat khau"),
                            onPressed: (){

                            },
                          ),
                        )
                      ]),
                ],
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Đăng Nhập",
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                    )
                  ],
                ),
              ),
              // phan dang nhap
              Form(
                key: _formkey,
                child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty)
                            return "ten dang nhap rong";
                          return null;
                        },
                        // kiem tra formfield co validation (T/F)
                        decoration: InputDecoration(
                          // hintText: "Nhap ten dang nhap", // goi y
                          label: Text("Tài khoản:"),
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      SizedBox(height: 20,),
                      // mat khau
                      TextFormField(
                        validator: (value1) {
                          if (value1 == null || value1.isEmpty)
                            return "mat khau nhap rong";
                          return null;
                        },
                        // kiem tra formfield co validation (T/F)
                        decoration: InputDecoration(
                          // hintText: "Nhap ten dang nhap", // goi y
                          label: Text("Mật khẩu:"),
                          prefixIcon: Icon(Icons.key),
                        ),
                      )
                    ]
                ),
              ),
              SizedBox(height: 30,),

              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 25, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.green,
                ),
                child: Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed: (){}, child: Text("Đăng Nhập" ,style: TextStyle(color: Colors.white),)),
                  ],

                ),

              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 25, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.green,
                ),
                child: Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context){
                      return dangky();
                    }));
                    },
                        child: Text("Đăng Ký",style: TextStyle(color: Colors.white)), )

                  ],

                ),

              ),
            ],
          )),
    );
  }
}
