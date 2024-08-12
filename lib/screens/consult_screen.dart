import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/consult_model.dart';

class Consult extends StatefulWidget {
  const Consult({Key? key}) : super(key: key);

  @override
  State<Consult> createState() => _ConsultState();
}

class _ConsultState extends State<Consult> {
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
                      Text("Consult",style: TextStyle(
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

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff202020),
                    ),
                    height: 50,
                    child: TextFormField(
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      autofocus: false,
                      cursorColor: Color(0xff202020),
                      decoration: const InputDecoration(
                        hintText: 'search',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        prefixIcon: Icon(Icons.search,color: Colors.white70,),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            top: 15, left: 20, bottom: 1, right: 4),
                        // hintText: 'Name,
                        //   hintStyle: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff101010),

                    ),
                    height: MediaQuery.of(context).size.height/9,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff202020),
                            ),
                            width:120,
                          //  color: Color(0xff202020),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                children: [
                                  Icon(Icons.sports_gymnastics,color: Colors.deepPurple,size: 50,),
                                  SizedBox(height: 5,),

                                  Text("Trainers",style: TextStyle(fontSize: 16,
                                  color: Colors.white),),
                                ],
                              ),
                            ),
                          ),
                        ),  Container(
                          width:120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xff202020),
                          ),                          child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                            child: Column(
                              children: [
                                Icon(Icons.no_food,color: Color(0xff808080),size: 50,),
                                SizedBox(height: 5,),

                                Text("Dieticians",style: TextStyle(fontSize: 16,
                                color: Colors.grey),),
                              ],
                            ),
                          ),
                        ),  Container(
                          width:120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xff202020),
                          ),                          child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                            child: Column(
                              children: [
                                Icon(Icons.back_hand_sharp,color: Color(0xff808080),size: 50,),
                                SizedBox(height: 5,),
                                Text("Therapists",style: TextStyle(fontSize: 16,
                                color: Colors.grey),),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),

                  SizedBox(height: 20,),

                  Column(
                  children: [
                    Container(
                      height: 500,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: consultlist.length,
                        itemBuilder: (BuildContext context, int index) {
                          ConsultModel conlist=consultlist[index];
                          return Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              //set border radius more than 50% of height and width to make circle
                            ),
                            color: Color(0xff101010),
                            child:
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Container(
                                        width:120,
                                        height: 120,
                                        child: Image.asset(conlist.image.toString(),fit: BoxFit.cover,)
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 60,),
                                            child: Container(
                                              width: MediaQuery.of(context).size.width/2.5,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15),
                                                color: conlist.recColor!=null?conlist.recColor:Colors.grey,

                                              ),
                                              child: Center(
                                                child: Text(conlist.rec.toString(),style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.normal
                                                ),),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Text(conlist.name.toString(),style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white70,
                                              fontWeight: FontWeight.bold
                                          ),),
                                          SizedBox(height: 20,),
                                          Text(conlist.title.toString(),style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.normal
                                          ),),Text(conlist.subtitle.toString(),style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.normal
                                          ),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height:MediaQuery.of(context).size.height/7,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Color(0xff181818),

                                  ),
                                  child:Padding(
                                    padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.star,color: Colors.white,size: 15,),
                                            Text(conlist.famous.toString(),style: TextStyle(fontSize: 14,
                                                color: Colors.grey),),
                                            Spacer(),

                                            Text(conlist.fees.toString(),style: TextStyle(fontSize: 16,
                                                color: Colors.white70,fontWeight: FontWeight.bold),),
                                            Text("Session",style: TextStyle(fontSize: 14,
                                                color: Colors.white70,fontWeight: FontWeight.normal),),

                                          ],
                                        ),
                                        SizedBox(height: 20,),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Color(0xff303030),
                                          ),
                                          height: 40,
                                          width: double.infinity,
                                          child: Center(
                                            child: Text(conlist.book.toString(),style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold
                                            ),),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),


                          );
                        },),
                    ),
                  ],
                    ),








                ],

              )
            ],
          ),
        ),
      ),
    );

  }
}
