import 'dart:async';

import 'package:fitness/screens/training_detail_list1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/start_training_model.dart';

class TrainingDetail extends StatefulWidget {
  final StartTrainingModel traininglist;
  TrainingDetail(this.traininglist);

  @override
  State<TrainingDetail> createState() => _TrainingDetailState();
}

class _TrainingDetailState extends State<TrainingDetail> {
  late Timer _timer;

  int _start =0;
  bool hide=false;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 19) {
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height/1.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff181818),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height:MediaQuery.of(context).size.height/2 ,
                            child: Image.asset(widget.traininglist.image.toString(),fit: BoxFit.cover,)),
                        Container(
                          height: 7,
                          width: double.infinity,
                          child: LinearProgressIndicator(
                            value: 0.3,
                            color: Colors.deepPurple[200], //<-- SEE HERE
                            backgroundColor: Colors.grey[700], //<-- SEE HERE
                          ),
                        ),
                        SizedBox(height: 30,),

                        Text("2 of 0",style: TextStyle(
                          color: Colors.grey
                        ),),
                        SizedBox(height: 10,),

                        Text("${widget.traininglist.name} ${"."} ${widget.traininglist.title}",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                        ),),

                        Text("${0}${0}${":"}${_start}",style: TextStyle(
                            color: Colors.white70,fontSize: 70,
                          fontWeight: FontWeight.bold
                        ),),

                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height/16,
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
                            MaterialPageRoute(builder: (context) =>TrainingDetailList1(widget.traininglist)),
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
            )
          ],
        ),
      ),
    );
  }
}

