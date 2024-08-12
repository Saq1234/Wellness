import 'package:fitness/screens/training_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/start_training_model.dart';

class Trainig extends StatefulWidget {
  const Trainig({Key? key}) : super(key: key);

  @override
  State<Trainig> createState() => _TrainigState();
}

class _TrainigState extends State<Trainig> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(

        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff181818),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Strength Training",style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),),
                            Spacer(),
                            Icon(Icons.settings,color: Colors.white70,)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("Doy1 . legs",style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                                fontSize: 16
                            ),),
                            SizedBox(width: 20,),
                            Text("15 mins",style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                                fontSize: 14
                            ),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepPurple[200],
                          ),
                          height: 50,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Start",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),),
                              Icon(Icons.play_arrow,color: Colors.black,)
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

                Container(

                  height: MediaQuery.of(context).size.height/1.2,
                  child:
                  ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: startTraininglist.length,
                    itemBuilder: (BuildContext context, int index) {
                      StartTrainingModel traininglist=startTraininglist[index];
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>TrainingDetail(traininglist)),
                          );
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            //set border radius more than 50% of height and width to make circle
                          ),
                          color: Colors.grey[900],
                          child:
                          Column(
                            children: [
                              Container(
                                height: 100,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Container(
                                        width:120,
                                        height: 100,
                                        child: Image.asset(traininglist.image.toString(),fit: BoxFit.cover,)
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,top: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(traininglist.name.toString(),style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 20
                                          ),),
                                          SizedBox(height: 20,),
                                          Text(traininglist.title.toString(),style: TextStyle(
                                              color: Colors.grey
                                          ),)
                                        ],
                                      ),
                                    ),
                                    Spacer(),

                                    Padding(
                                      padding: const EdgeInsets.only(right: 10,top: 30),
                                      child: Icon(Icons.view_headline_sharp,color: Colors.grey,),
                                    )


                                  ],
                                ),
                              ),
                            ],
                          ),

                        ),
                      );
                    },),
                ),

















              ],

            )
          ],
        ),
      ),
    );

  }
}
