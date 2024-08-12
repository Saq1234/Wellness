import 'dart:async';

import 'package:fitness/screens/training_detail_screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/start_training_model.dart';

class TrainingDetailList1 extends StatefulWidget {
  final StartTrainingModel traininglist;
  TrainingDetailList1(this.traininglist);

  @override
  State<TrainingDetailList1> createState() => _TrainingDetailList1State();
}

class _TrainingDetailList1State extends State<TrainingDetailList1> {

  late Timer _timer;

  int _start =0;
  bool hide=false;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 10) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start++;
          });
        }
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(

        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
              child:
              Stack(
                children:[
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text("Up Next",style: TextStyle(
                        fontSize: 16,color: Colors.deepPurple,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    SizedBox(height: 40,),

                    Container(
                    height: MediaQuery.of(context).size.height/2.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff181818),
                    ),
                    child: Column(
                      children: [
                        Spacer(),
                        Text("Good job!",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 16
                        ),),Text("Take a few secound to rest",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 16
                        ),),
                        Spacer(),
                        Container(
                          height: 7,
                          width: double.infinity,
                          child: LinearProgressIndicator(
                            value: 0.6,
                            color: Colors.deepPurple[200], //<-- SEE HERE
                            backgroundColor: Colors.grey[700], //<-- SEE HERE
                          ),
                        ),
                      ],
                    ),
                      ),Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height/4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff303030),

                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 30,),

                          Text("Rest  .  20 sec",style: TextStyle(
                              color: Colors.grey,
                            fontSize: 16
                          ),),
                          SizedBox(height: 10,),

                          Text("${0}${0}${":"}${_start}",style: TextStyle(
                              color: Colors.white70,fontSize: 70,
                              fontWeight: FontWeight.bold
                          ),),
                        ],
                      ),
                    ),


                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Row(
                            children: [
                              Icon(Icons.arrow_left_outlined,color: Colors.white,size: 30,),
                              Text("Last",style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18
                              ),),
                            ],
                          ),
                        ),
                        Spacer(),

                        GestureDetector(
                          onTap: (){
                            startTimer();
                            hide=true;
                          },
                          child:
                          hide==true?
                          Icon(Icons.pause,color: Colors.white,size: 100,):
                          Icon(Icons.play_arrow,color: Colors.white,size: 100,),
                        ),

                        Spacer(),

                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>TrainingDetailList2(widget.traininglist)),
                            );
                          },
                          child: Row(
                            children: [
                              Text("Skip",style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18
                              ),),
                              Icon(Icons.arrow_right_outlined,color: Colors.white,size: 30,),

                            ],
                          ),
                        ),
                      ],
                    )
                  ],

                ),
                  Positioned(
                    top: 30,
                    left: 30,
                    child:Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[900],
                      ),
                      height: MediaQuery.of(context).size.height/14,
                      width: 300,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height:MediaQuery.of(context).size.height/14 ,
                                width:50,
                                child: Image.asset("assets/images/training3.png",fit: BoxFit.cover,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Single Leg Raises",style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    SizedBox(height: 5,),

                                    Text("x20",style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.normal
                                    ),),






                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),

                    ),
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );

  }
}
