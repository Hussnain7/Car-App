import 'package:flutter/material.dart';
import 'package:flutter_carapp_v1/LoginPage.dart';
import 'package:get/get.dart';



void main(){
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false ,
    title: "LuxuryCar",
    home: LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
  ),
  );
}

