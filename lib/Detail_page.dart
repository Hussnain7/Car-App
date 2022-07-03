import 'package:flutter/material.dart';
import 'package:flutter_carapp_v1/datafiles.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget{
  Model model = Model();

  var index;

  DetailPage(this.model , {required this.index});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 33, 46, 1.0),
      body: Column(
        children:<Widget> [

          Container(
            color: Colors.white,
            height: 300,
            width: 400,
            child:Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Center(
              child: Image(image: NetworkImage(model.carnames[index],
              ),
            ),
              ),
          ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(

           title: Text(model.modeldetail[index].toString(),
             style: TextStyle(
               fontSize: 40,
               fontWeight: FontWeight.bold,
               color: Colors.grey,

             ),

           ),

            subtitle: Text(model.locationdetail[index].toString(),
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,

              ),
            ),

            trailing: Icon(Icons.bookmark,
            size: 40,
             color: Colors.grey,
            ),

      ),


      ],
    ),
    );
  }
}