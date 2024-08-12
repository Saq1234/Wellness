import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/discover_model.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
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
                children: [
                    Row(
                      children: [
                        Text("Discover",style: TextStyle(
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
                        hintText: 'Articles,Exercise,Dirts',
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


                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[900]),
                        child: Center(
                            child: Text(
                              "Fier",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      SizedBox(width: 5,),Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[900]),
                        child: Center(
                            child: Text(
                              "Planks",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      SizedBox(width: 5,),Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[900]),
                        child: Center(
                            child: Text(
                              "HIIT",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      SizedBox(width: 5,),Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[900]),
                        child: Center(
                            child: Text(
                              "Strength",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      SizedBox(width: 5,),

                    ],
                  ),
                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[900]),
                        child: Center(
                            child: Text(
                              "Phyometrics",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      SizedBox(width: 5,),Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[900]),
                        child: Center(
                            child: Text(
                              "Electrolytes",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      SizedBox(width: 5,),Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[900]),
                        child: Center(
                            child: Text(
                              "Protien",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),


                    ],
                  ),
                  SizedBox(height: 30,),

                  Row(
                    children: [
                      Text("Exercises",style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18
                      ),),
                      Spacer(),
                      Text("View All",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18
                      ),),
                    ],
                  ),
                  SizedBox(height: 20,),

                  Container(
                    //color: Colors.amber,
                    height: 420,
                    child: GridView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: discoverlist.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20.0,
                          crossAxisSpacing: 20.0,
                          childAspectRatio: 0.9
                      ), itemBuilder: (BuildContext context, int index) {
                      DiscoverModel discover=discoverlist[index];


                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff303030),

                        ),
                        child: SingleChildScrollView(
                          child:
                          Stack(
                            children:[ Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Container(
                                height:200,
                                  width: 200,
                                  child: Image.asset(discover.image.toString(),fit: BoxFit.cover,)),

                              ],
                            ),
                              Positioned(
                                left: 20.0,
                                top: MediaQuery.of(context).size.width/4,
                                child: Container(
                                  width: MediaQuery.of(context).size.width/4,
                                    child: Text(
                                      discover.text.toString(),
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                                      maxLines: 3,
                                    )),
                              ),
                          ]
                          ),
                        ),
                      );
                    },
                    ),
                  )




                ],

              )
            ],
          ),
        ),
      ),
    );
  }
}
