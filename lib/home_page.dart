import 'package:flutter/material.dart';
import 'package:flutter_carapp_v1/Detail_page.dart';
import 'package:flutter_carapp_v1/Grid_view.dart';
import 'package:flutter_carapp_v1/scroll_view.dart';
import 'package:get/get.dart';
import 'package:flutter_carapp_v1/datafiles.dart';

class CarApp extends StatelessWidget{
  Model model = Model();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 33, 46, 1.0),
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget> [
              Container(
                  color: Color.fromRGBO(61, 72, 92, 1.0),
                  height: 220,
                  child: Column(

                    children:<Widget> [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:<Widget> [
                          Padding
                          (padding: EdgeInsets.all(16.0),
                            child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.linear_scale_outlined,
                                color: Colors.white70,
                              ),
                            ),
                        ),
                        ],

                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[Padding
                          (padding: EdgeInsets.all(16.0),
                          child:Text(
                            "Branding List",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black45,

                            ),
                          ),
                        ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget> [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(83, 97, 125, 1.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Search",
                                  icon: Icon(Icons.search,),
                                ),
                              ),
                            ),
                            height: 50,
                            width: 350,
                          ),
                        ],
                      ),
                    ],
                  )
              ),
              SizedBox(
                height: 10,
              ),
              scrollview(),
              SizedBox(
                height: Get.height*0.015,
              ),
              Container(
                height:Get.height*0.3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,

                  itemCount: 6,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height:Get.height*0.08 ,
                        width: Get.width*0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(61, 72, 92, 1.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [


                        Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Image(image: NetworkImage(model.carnames[index])),
                                 ),
                            Text(model.names[index].toString(),

                            ),

                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: CircleAvatar(
                                  radius: 20,
                                  child: IconButton(
                                    onPressed: (){

                                      Get.to(DetailPage(model ,index: index,));
                                    },
                                    icon: Icon(Icons.arrow_right_alt_sharp,
                                      color: Colors.white70,

                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                    );

                  },

                ),

              )
            ],
          ),
        ),

      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
        },
        child:Icon(Icons.directions_car,
          size: 28,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(
        ),
        child: Container(
          height: 60,
          color: Color.fromRGBO(28, 33, 46, 1.0),
          child: Padding(
            padding: EdgeInsets.all(16.0),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget>[

                   IconButton(
                    onPressed: () {
                    },
                    icon: Icon(Icons.home_rounded,
                      color: Colors.white70,
                    ),

                  ),


                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.chat_bubble_outlined,
                    color: Colors.white70,
                  ),

                ),

                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.notifications,
                    color: Colors.white70,
                  ),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.person,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),

        ),
      ),

    );
  }
}
