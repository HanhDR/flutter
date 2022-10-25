import 'package:flutter/material.dart';

class login_form extends StatelessWidget {
 login_form({Key? key}) : super(key: key);
  var _formkey=GlobalKey<FormState>();
  var _userNameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                //validator xac thuc du lieu nhap vao co dung hay k?
                validator: (value ){
                  if(value==null||value.isEmpty)
                    return "ten dang nhap rong";
                  return null;
                },
                decoration: InputDecoration(
                    hintText: "Nhap ten dang nhap",
                    label: Text("Ten dang nhap"),
                    prefixIcon: Icon(Icons.person)

                ),
                controller: _userNameController,
              ),
              TextFormField(

              ),
              ElevatedButton(onPressed:(){
                if(_formkey.currentState!.validate())
                  {
                    var snackBar=SnackBar(
                        content:Row(
                          children: [
                            Icon(Icons.person),
                            Text("Xin chao :${_userNameController.text}"),
                          ],
                        )
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
              },

                  child: Text("Dang Nhap"))
            ],


          ),

        )

      ),
    );
  }
}
