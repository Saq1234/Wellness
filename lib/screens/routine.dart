import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/routine_model.dart';

class Routine extends StatefulWidget {
  const Routine({Key? key}) : super(key: key);

  @override
  State<Routine> createState() => _RoutineState();
}

class _RoutineState extends State<Routine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("My Routine",style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                      Spacer(),
                      Icon(Icons.notifications,color: Colors.white,),
                      SizedBox(width: 20,),
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[900],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.album_rounded,color: Colors.white,),
                            Text("245",style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Ongoing",style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff181818),
                    ),
                    height: MediaQuery.of(context).size.height/4,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height:MediaQuery.of(context).size.height/4 ,
                              width:100,
                              child: Image.asset("assets/images/man.jpeg",fit: BoxFit.cover,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Summer Yoga",style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  SizedBox(height: 5,),

                                  Text("20 min . Fullbody",style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal
                                  ),),
                                  SizedBox(height: 20,),
                                  Row(
                                    children: [
                                      Text("Daily Completed",style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal
                                      ),),
                                      SizedBox(width: 30,),
                                      Text("Calories Burnt",style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal
                                      ),),
                                    ],
                                  ),
                                  SizedBox(height:5,),

                                  Row(
                                    children: [
                                      Text("21",style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white70,
                                          fontWeight: FontWeight.bold
                                      ),),
                                      Text("/31",style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal
                                      ),),
                                      Container(width: MediaQuery.of(context).size.width/5.7,),
                                      Text("3",style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white70,
                                          fontWeight: FontWeight.bold
                                      ),),
                                      Text("Kcal",style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal
                                      ),),

                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    children: [
                                      Container(
                                        width: 200,
                                        child: LinearProgressIndicator(
                                          value: 0.6,
                                          color: Colors.deepPurple, //<-- SEE HERE
                                          backgroundColor: Colors.grey, //<-- SEE HERE
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      Text("65%",style: TextStyle(
                                          color: Colors.grey),),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff303030),
                                    ),
                                    height: 40,
                                    width: MediaQuery.of(context).size.height/3.5,
                                    child: Center(
                                      child: Text("Continue",style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    ),
                                  ),
                                  SizedBox(height: 10,),




                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),

                  ),

                  SizedBox(height: 20,),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff181818),
                    ),
                    height: MediaQuery.of(context).size.height/9,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height:MediaQuery.of(context).size.height/9 ,
                              width:100,
                              child: Image.asset("assets/images/three.jpg",fit: BoxFit.cover,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Total Arm",style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  SizedBox(height: 5,),

                                  Text("20 min . Arms",style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal
                                  ),),
                                  SizedBox(height: 20,),

                                  Row(
                                    children: [
                                      Container(
                                        width: 200,
                                        child: LinearProgressIndicator(
                                          value: 0.5,
                                          color: Colors.deepPurple, //<-- SEE HERE
                                          backgroundColor: Colors.grey, //<-- SEE HERE
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      Text("50%",style: TextStyle(
                                          color: Colors.grey),),
                                    ],
                                  ),





                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),

                  ),

                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff303030),
                    ),
                    height: 50,
                    width: double.infinity,
                    child: Center(
                      child: Text(" +   Add New Routine",style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),

                  SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    height: 210,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/training');

                      },
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: routinelist.length,
                        itemBuilder: (BuildContext context, int index) {
                          RoutineModel routine=routinelist[index];
                          return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                              Stack(
                                children:[ ClipRRect(
                                  borderRadius: BorderRadius.circular(20), // Image border

                                  child: Container(
                                      width:120,
                                      height: 210,
                                      child: Image.asset(routine.image.toString(),fit: BoxFit.cover,)
                                  ),
                                ),
                                  Positioned(
                                    left: 20.0,
                                    bottom: 10,
                                    child: Text(
                                      routine.name.toString(),
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                          ],
                              ),
                            );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),













                ],

              )
            ],
          ),
        ),
      ),
    );

  }
}


