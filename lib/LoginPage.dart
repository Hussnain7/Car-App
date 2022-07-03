import 'package:flutter/material.dart';
import 'package:flutter_carapp_v1/home_page.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
       children:<Widget>[
      Container(
      decoration: BoxDecoration(

        image: DecorationImage(
          image: NetworkImage(
              "https://images.unsplash.com/photo-1597687210367-a4915552d886?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1528&q=80"),
          fit: BoxFit.cover,

        ),
      ),
    ),
         Center(
           child: Padding(
             padding: EdgeInsets.all(16.0),
             child: SingleChildScrollView(
               child: Column(
                 children:<Widget> [
                   Card(
                     color: Colors.white70.withOpacity(0.6),
                     child: Padding(
                       padding: EdgeInsets.all(16.0),
                       child: Column(
                         children:<Widget> [
                           TextFormField(
                             decoration: InputDecoration(
                                 border: OutlineInputBorder(),
                                 hintText: "Enter Username" ,labelText: "Username"),
                           ),
                           SizedBox(
                             height: 10,
                           ),
                           TextFormField(
                             obscureText: true,
                             decoration: InputDecoration(
                                 border: OutlineInputBorder(),
                                 hintText: "Enter password",
                                 labelText: "Password"),
                           ),
                           SizedBox(
                             height: 50,
                           ),
                           Padding(
                               padding: EdgeInsets.all(16.0),
                               child: RaisedButton(
                                 onPressed: (){
                                      Get.to(CarApp());
                                 },
                                 child: Text("Sign in",
                                     style: TextStyle(
                                       color: Colors.white,)

                                 ),
                                 color: Colors.indigo,
                               )
                           ),
                         ],
                       ),
                     ),
                   ),
                 ],
               ),
             ),
           ),
         ),

    ],
      ),
    );
  }
  }
