import 'package:fitness/model/spaces_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Spaces extends StatefulWidget {
  const Spaces({Key? key}) : super(key: key);

  @override
  State<Spaces> createState() => _SacesState();
}

class _SacesState extends State<Spaces> {
  SpacesModel? spacesModel;
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
                      Text("Spaces",style: TextStyle(
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

                  Text("Exercises with friends",style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18
                  ),),
                  SizedBox(height: 20,),
                  Container(
                   // color: Colors.amber,
                    height: 140,
                    child: GridView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: spacemodellist.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20.0,
                          crossAxisSpacing: 10.0,
                          childAspectRatio: 3
                      ), itemBuilder: (BuildContext context, int index) {
                      SpacesModel space=spacemodellist[index];


                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff303030),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              height:40,
                              width: 40,
                              child: Image.asset(space.image.toString(),fit: BoxFit.cover,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5,top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(space.name.toString(),style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold
                                      ),),
                                      SizedBox(width: 5,),
                                      Text(space.hour.toString(),style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.normal
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(space.value1.toString(),style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold
                                      ),),
                                      SizedBox(width: 5,),
                                      Text(space.valuetext1.toString(),style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.normal
                                      ),),
                                      Text(space.value2.toString(),style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold
                                      ),),
                                      SizedBox(width: 5,),
                                      Text(space.valuetext2.toString(),style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.normal
                                      ),),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),

                      );
                    },
                    ),
                  ),
                  SizedBox(height: 20,),

                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff303030),
                        ),
                        height: 50,
                        width: 180,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              height:40,
                              width: 40,
                              child: Image.asset("assets/images/shami.png",fit: BoxFit.cover,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5,top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Shami",style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white70,
                                          fontWeight: FontWeight.bold
                                      ),),
                                      SizedBox(width: 5,),
                                      Text("1ohr",style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("15",style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white70,
                                          fontWeight: FontWeight.bold
                                      ),),
                                      SizedBox(width: 5,),
                                      Text("streak .",style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal
                                      ),),
                                      Text("100",style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white70,
                                          fontWeight: FontWeight.bold
                                      ),),
                                      SizedBox(width: 5,),
                                      Text("coins",style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal
                                      ),),
                                    ],
                                  )
                                ],
                              ),
                            ),



                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff303030),
                        ),
                        height: 50,
                        width: 180,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add,color: Colors.white70,),
                            SizedBox(width: 10,),
                            Text("Add friends",style: TextStyle(
                                color: Colors.white70,
                                fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),),


                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),

                  Text("Exercises with friends",style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18
                  ),),
                  SizedBox(height: 20,),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff101010),
                    ),
                    height: MediaQuery.of(context).size.height/2.5,
                    child:
                    Stack(
                      children:[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            width: double.infinity,
                            child: Image.asset("assets/images/yoga.jpeg",fit: BoxFit.cover,),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("Yoga for beginners",style: TextStyle(
                                color: Colors.white70,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 10),
                            child: Row(
                              children: [
                                Icon(Icons.calendar_today_outlined,color: Colors.grey,size: 20,),
                                SizedBox(width: 5,),
                                Text("SEP 7. 10:00 AM . 2hrs",style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal
                                ),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 10),
                            child: Row(
                              children: [
                                Container(
                                  height: 30,
                                  child: Image.asset("assets/images/shami.png",fit: BoxFit.cover,),
                                ),
                                SizedBox(width: 5,),
                                Text("Shami and 76 other are attending",style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal
                                ),),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff303030),
                              ),
                              height: 50,
                              width: double.infinity,
                              child: Center(
                                child: Text("Attend",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),),
                              ),
                            ),
                          ),


                        ],
                      ),
                        Positioned(
                          right: 20.0,
                          top: 15,

                          child: Container(
                            width: MediaQuery.of(context).size.width/4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,

                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Online",style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),),
                                Text(". Live",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),),

                              ],
                            ),
                            )),


                      ],
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
