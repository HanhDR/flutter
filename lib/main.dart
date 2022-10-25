import 'package:baitap/Classroom.dart';
import 'package:baitap/DangNhap.dart';
import 'package:baitap/Food.dart';
import 'package:baitap/Gridview.dart';
import 'package:baitap/Provide/product_provide.dart';
import 'package:baitap/login_page.dart';
import 'package:baitap/productlist_page.dart';

import 'package:baitap/thangcanh.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
        providers:[
          ChangeNotifierProvider(create: (_)=>ProductProvide())
        ],
     child: MaterialApp(
       home: ProductListPage(),
     ),
    )
  );
}

