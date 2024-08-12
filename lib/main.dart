import 'package:fitness/screens/bottom_navigation.dart';
import 'package:fitness/screens/dashboard.dart';
import 'package:fitness/screens/training_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/dashboard': (context) => DashBottomNavigation(),
        '/training': (context) => Trainig(),
      },
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List age = [19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30];
  List heightfit = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List heightInch = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List weight = [
    55,
    56,
    57,
    58,
    59,
    60,
    61,
    62,
    63,
    64,
    65,
    66,
    67,
    68,
    69,
    70,
    71,
    72,
    73,
    74,
    75,
    76,
    77,
    78,
    79,
    80,
    81,
    82,
    83,
    84,
    85
  ];

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          Container(
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 7,
                ),
                Text(
                  "Hey!",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Welcome to MyFitneSS",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Amazing to see you here!",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "we just need to know a bit more about you to set",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "up your personalized fitness journey",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: LinearProgressIndicator(
                    value: 10,
                    color: Colors.deepPurple, //<-- SEE HERE
                    backgroundColor: Colors.grey, //<-- SEE HERE
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _controller.nextPage(
                        duration: Duration(microseconds: 300),
                        curve: Curves.easeInOut);
                    // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    //   return Dashboard();
                    // }));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 30, right: 30, top: 70),
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff202020),
                    ),
                    child: Center(
                        child: Text(
                      "Sign up",
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),

          //Name pageview
          Container(
            color: Colors.black,
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: LinearProgressIndicator(
                      value: 0.1,
                      color: Colors.deepPurple, //<-- SEE HERE
                      backgroundColor: Colors.grey, //<-- SEE HERE
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 3.5,
                  ),
                  Text(
                    "What is your Name?",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, right: 50, top: 30),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff202020),
                      ),
                      height: 50,
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        autofocus: false,
                        cursorColor: Color(0xff202020),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            top: 1,
                            left: 20,
                            right: 4,
                          ),
                          hintText: 'Enter Name',
                          hintStyle: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.4,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                            duration: Duration(microseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Next",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.arrow_forward_ios_sharp,
                              color: Colors.white70, size: 15),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //location pageview
          Container(
            color: Colors.black,
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: LinearProgressIndicator(
                      value: 0.2,
                      color: Colors.deepPurple, //<-- SEE HERE
                      backgroundColor: Colors.grey, //<-- SEE HERE
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                  ),
                  Text(
                    "Where are you from?",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Your location will let us customised the",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "fitness related event arround you",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, right: 50, top: 30),
                    child: Container(
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
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              top: 10, left: 20, bottom: 1, right: 4),
                          hintText: 'Kanpur',
                          hintStyle: TextStyle(color: Colors.white70),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Or",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50, right: 50, top: 40),
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text(
                      "Set your current location",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    )),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4.7,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: GestureDetector(
                          onTap: () {
                            _controller.jumpToPage(1);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.arrow_back_ios_new,
                                  color: Colors.grey[800], size: 15),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Back",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(microseconds: 300),
                                curve: Curves.easeInOut);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Next",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.arrow_forward_ios_sharp,
                                  color: Colors.white70, size: 15),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          //age pageview
          Container(
            color: Colors.black,
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: LinearProgressIndicator(
                      value: 0.4,
                      color: Colors.deepPurple, //<-- SEE HERE
                      backgroundColor: Colors.grey, //<-- SEE HERE
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                  ),
                  Text(
                    "What is yor age?",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    // color: Colors.amber,
                    width: 50,
                    height: 200,
                    child: ListView.builder(
                      padding: EdgeInsets.only(bottom: 40),
                      itemCount: age.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          color: Colors.black,
                          height: 50,
                          child: Center(
                            child: Text(
                              age[index].toString(),
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 3.7,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: GestureDetector(
                          onTap: () {
                            _controller.jumpToPage(2);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.arrow_back_ios_new,
                                  color: Colors.grey[800], size: 15),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Back",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(microseconds: 300),
                                curve: Curves.easeInOut);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Next",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.arrow_forward_ios_sharp,
                                  color: Colors.white70, size: 15),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          //height pageview

          Container(
            color: Colors.black,
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: LinearProgressIndicator(
                      value: 0.5,
                      color: Colors.deepPurple, //<-- SEE HERE
                      backgroundColor: Colors.grey, //<-- SEE HERE
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                  ),
                  Text(
                    "Where is your height?",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // color: Colors.amber,
                        width: 50,
                        height: 200,
                        child: ListView.builder(
                          padding: EdgeInsets.only(bottom: 40),
                          itemCount: heightfit.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Stack(
                              children: [
                                Container(
                                  color: Colors.black,
                                  height: 50,
                                  child: Center(
                                    child: Text(
                                      heightfit[index].toString(),
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 40.0,
                                  top: 10,
                                  child: Container(
                                      height: 40,
                                      child: Text(
                                        "'",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 30),
                                      )),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        // color: Colors.amber,
                        width: 50,
                        height: 200,
                        child: ListView.builder(
                          padding: EdgeInsets.only(bottom: 40),
                          itemCount: heightInch.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Stack(children: [
                              Container(
                                color: Colors.black,
                                height: 50,
                                child: Center(
                                  child: Text(
                                    heightInch[index].toString(),
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 40.0,
                                top: 10,
                                child: Container(
                                    height: 40,
                                    child: Text(
                                      "''",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 30),
                                    )),
                              ),
                            ]);
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 100,
                    // color: Colors.grey[900],
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[900],
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey[800],
                          ),
                          height: 30,
                          width: 50,
                          child: Center(
                            child: Text(
                              "fit/in",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[900],
                          ),
                          height: 30,
                          width: 50,
                          child: Center(
                            child: Text(
                              "cm",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4.7,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: GestureDetector(
                          onTap: () {
                            _controller.jumpToPage(3);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.arrow_back_ios_new,
                                  color: Colors.grey[800], size: 15),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Back",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(microseconds: 300),
                                curve: Curves.easeInOut);

                            //  _controller.jumpToPage(5);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Next",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.arrow_forward_ios_sharp,
                                  color: Colors.white70, size: 15),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          //weight pageview
          Container(
            color: Colors.black,
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: LinearProgressIndicator(
                      value: 0.5,
                      color: Colors.deepPurple, //<-- SEE HERE
                      backgroundColor: Colors.grey, //<-- SEE HERE
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                  ),
                  Text(
                    "What is your weight?",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Stack(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          // color: Colors.amber,
                          width: 50,
                          height: 200,
                          child: ListView.builder(
                            padding: EdgeInsets.only(bottom: 40),
                            itemCount: weight.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                color: Colors.black,
                                height: 50,
                                child: Center(
                                  child: Text(
                                    weight[index].toString(),
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      right: 150,
                      // left: 40.0,
                      top: 110,
                      child: Container(
                          height: 40,
                          child: Text(
                            "kg",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 18),
                          )),
                    ),
                  ]),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 30),
                    width: 100,
                    // color: Colors.grey[900],
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[900],
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey[800],
                          ),
                          height: 30,
                          width: 50,
                          child: Center(
                            child: Text(
                              "kg",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[900],
                          ),
                          height: 30,
                          width: 50,
                          child: Center(
                            child: Text(
                              "lbs",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 5.1,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: GestureDetector(
                          onTap: () {
                            _controller.jumpToPage(4);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.arrow_back_ios_new,
                                  color: Colors.grey[800], size: 15),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Back",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(microseconds: 300),
                                curve: Curves.easeInOut);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Next",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.arrow_forward_ios_sharp,
                                  color: Colors.white70, size: 15),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          //target pageview

          Container(
            color: Colors.black,
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: LinearProgressIndicator(
                      value: 0.7,
                      color: Colors.deepPurple, //<-- SEE HERE
                      backgroundColor: Colors.grey, //<-- SEE HERE
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 5,
                  ),
                  Text(
                    "What is your target",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    " weight?",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "According to evi,your idea",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "weight range is ",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        "65-70 kg",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          // color: Colors.amber,
                          width: 50,
                          height: 200,
                          child: ListView.builder(
                            padding: EdgeInsets.only(bottom: 40),
                            itemCount: weight.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                color: Colors.black,
                                height: 50,
                                child: Center(
                                  child: Text(
                                    weight[index].toString(),
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      right: 150,
                      // left: 40.0,
                      top: 110,
                      child: Container(
                          height: 40,
                          child: Text(
                            "kg",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 18),
                          )),
                    ),
                  ]),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 30),
                    width: 100,
                    // color: Colors.grey[900],
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[900],
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey[800],
                          ),
                          height: 30,
                          width: 50,
                          child: Center(
                            child: Text(
                              "kg",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[900],
                          ),
                          height: 30,
                          width: 50,
                          child: Center(
                            child: Text(
                              "lbs",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 6.9,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: GestureDetector(
                          onTap: () {
                            _controller.jumpToPage(5);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.arrow_back_ios_new,
                                  color: Colors.grey[800], size: 15),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Back",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(microseconds: 300),
                                curve: Curves.easeInOut);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Next",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.arrow_forward_ios_sharp,
                                  color: Colors.white70, size: 15),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          //goal pageview

          Container(
            color: Colors.black,
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: LinearProgressIndicator(
                      value: 0.8,
                      color: Colors.deepPurple, //<-- SEE HERE
                      backgroundColor: Colors.grey, //<-- SEE HERE
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 5,
                  ),
                  Text(
                    "What are your goals?",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width / 4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[900]),
                            child: Center(
                                child: Text(
                              "Lose weight",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width / 4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[900]),
                            child: Center(
                                child: Text(
                              "Gain weight",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[900]),
                              child: Center(
                                  child: Text(
                                "Workout with others",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[900]),
                              child: Center(
                                  child: Text(
                                "Diet",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 60, top: 10),
                        child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width / 2.6,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[900]),
                          child: Center(
                              child: Text(
                            "Consulting profection",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[900]),
                              child: Center(
                                  child: Text(
                                "General fitness",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[900]),
                              child: Center(
                                  child: Text(
                                "Fexbility",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[900]),
                              child: Center(
                                  child: Text(
                                "Muscle",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[900]),
                              child: Center(
                                  child: Text(
                                "Stamina",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 3.7,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: GestureDetector(
                          onTap: () {
                            _controller.jumpToPage(6);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.arrow_back_ios_new,
                                  color: Colors.grey[800], size: 15),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Back",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(microseconds: 300),
                                curve: Curves.easeInOut);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Next",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.arrow_forward_ios_sharp,
                                  color: Colors.white70, size: 15),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          //health pageview

          Container(
            color: Colors.black,
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: LinearProgressIndicator(
                      value: 10,
                      color: Colors.deepPurple, //<-- SEE HERE
                      backgroundColor: Colors.grey, //<-- SEE HERE
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 9,
                  ),
                  Text(
                    "Do you have any health",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "issues we should be",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "aware of?",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "This will let  us help you reach your",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "goals safely",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[900]),
                            child: Center(
                                child: Text(
                              "Diabates",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[900]),
                            child: Center(
                                child: Text(
                              "Asthama",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[900]),
                            child: Center(
                                child: Text(
                              "PCOS",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 3.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[900]),
                              child: Center(
                                  child: Text(
                                "Physical injury",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[900]),
                              child: Center(
                                  child: Text(
                                "Thyroid",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[900]),
                              child: Center(
                                  child: Text(
                                "Cholestrol",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[900]),
                              child: Center(
                                  child: Text(
                                "Heart Disease",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 70),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[900]),
                              child: Center(
                                  child: Text(
                                "Hypertension",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[900]),
                              child: Center(
                                  child: Text(
                                "Acid related",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 3.2,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: GestureDetector(
                          onTap: () {
                            _controller.jumpToPage(7);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.arrow_back_ios_new,
                                  color: Colors.grey[800], size: 15),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Back",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/dashboard');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Next",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.arrow_forward_ios_sharp,
                                  color: Colors.white70, size: 15),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
