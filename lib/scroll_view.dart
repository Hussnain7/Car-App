import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class scrollview extends StatelessWidget{
  var   carlogo=[
    "https://images.unsplash.com/photo-1620288627223-53302f4e8c74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1528&q=80",
    "https://i.pinimg.com/originals/f5/7a/cd/f57acd525c15fa16d7b23d29637847f6.jpg",
    "https://pngimg.com/uploads/bugatti_logo/bugatti_logo_PNG14.png",
    "https://1000logos.net/wp-content/uploads/2018/04/Maserati-Logo-2006.jpg",
    "https://d2hucwwplm5rxi.cloudfront.net/wp-content/uploads/2022/06/02082534/porsche-logo-cover-020620220120.jpg",
    "https://w0.peakpx.com/wallpaper/412/805/HD-wallpaper-bmw-logo.jpg",

  ];
  List <String> carnames=[
    "Lamborghini",
    "Ferrari",
    "Bugatti",
    "Maserati",
    "Porsche",
    "BMW",
  ];
  @override
  Widget build(BuildContext context){
    return Container(
        height: 150,
        child: ListView.builder(

          scrollDirection: Axis.horizontal,
          itemCount: 6,
            itemBuilder: (context, index) {
            return Container(
            height: 150,
            width: 120,

            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(28, 33, 46, 1.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget> [
                Padding(
                    padding: EdgeInsets.all(0.0),
                  child: CircleAvatar(
                    radius: Get.height*0.06,
                    backgroundImage: NetworkImage(carlogo[index]),),
                ),
                Text(carnames[index].toString(),
                style: TextStyle(
                  color: Color.fromRGBO(61, 72, 92, 1.0)
                ),
                ),



            ],
            ),

            );
        }
        ),

    );
  }
}