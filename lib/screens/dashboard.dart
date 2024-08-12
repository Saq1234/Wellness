import 'package:fitness/model/exercise_model.dart';
import 'package:fitness/screens/bottom_navigation.dart';
import 'package:fitness/screens/mode_tracker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../model/goals_model_dash.dart';
import 'package:intl/intl.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late GoalsMOdelDash goalsMOdelDash;
  var greyColor = Colors.grey[900];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // bottomNavigationBar: DashBottomNavigation(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: ListView(children: [
            Column(
              children: [
                Row(
                  children: [
                    const Text(
                      "Hi,",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      " Saquib",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[900],
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.album_rounded,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "245",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 13,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: datelist.length,
                    itemBuilder: (BuildContext context, int index) {
                      DateList checkdatelist = datelist[index];

                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: const Color(0xff303030),
                        ),
                        height: 50,
                        width: 60,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                checkdatelist.number.toString(),
                                style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                checkdatelist.days.toString(),
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ModeTracker()),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text(
                          "Mood Tracker",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        "Wellness Plan",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        "Educational",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Text(
                      "Today",
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      "View All",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: exerciseList.length,
                    itemBuilder: (BuildContext context, int index) {
                      Exercise exercisemodel = exerciseList[index];
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          //set border radius more than 50% of height and width to make circle
                        ),
                        color: Colors.grey[900],
                        child: Stack(children: [
                          Column(
                            children: [
                              Container(
                                height: 100,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 120,
                                        height: 120,
                                        child: Image.asset(
                                          exercisemodel.image.toString(),
                                          fit: BoxFit.cover,
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            exercisemodel.title.toString(),
                                            style: TextStyle(
                                                color:
                                                    exercisemodel.colurl != null
                                                        ? exercisemodel.colurl
                                                        : Colors.grey,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 40,
                                          ),
                                          Text(
                                            exercisemodel.subtite.toString(),
                                            style: const TextStyle(
                                                color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                              bottom: 10,
                              left: 30,
                              child: Text(
                                exercisemodel.mints.toString(),
                                style: const TextStyle(color: Colors.white70),
                              ))
                        ]),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  children: [
                    Text(
                      "Goals",
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      "View All",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  //color: Colors.amber,
                  height: 400,
                  child: GridView.builder(
                    // physics: BouncingScrollPhysics(),
                    itemCount: goalmodeldaslist.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10.0,
                            crossAxisSpacing: 10.0,
                            childAspectRatio: 0.7),
                    itemBuilder: (BuildContext context, int index) {
                      GoalsMOdelDash goals = goalmodeldaslist[index];

                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xff303030),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 120,
                              height: 120,
                              child: SfRadialGauge(
                                  backgroundColor: const Color(0xff303030),
                                  axes: <RadialAxis>[
                                    RadialAxis(
                                        interval: 5,
                                        startAngle: 0,
                                        endAngle: 360,
                                        showTicks: false,
                                        showLabels: false,
                                        axisLineStyle:
                                            const AxisLineStyle(thickness: 5),
                                        pointers: <GaugePointer>[
                                          const RangePointer(
                                              value: 60,
                                              width: 5,
                                              color: Colors.white,

                                              //enableAnimation: true,
                                              cornerStyle: CornerStyle.endCurve)
                                        ],
                                        annotations: <GaugeAnnotation>[
                                          GaugeAnnotation(
                                              widget: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                        height: 50,
                                                        width: 50,
                                                        child: Image.asset(goals
                                                            .myicon
                                                            .toString()))
                                                  ],
                                                ),
                                              ),
                                              angle: 100,
                                              positionFactor: 0.4)
                                        ])
                                  ]),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  goals.rangvalue.toString(),
                                  style: const TextStyle(color: Colors.white),
                                ),
                                Text(
                                  goals.rangvaluetext.toString(),
                                  style: const TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  goals.firsttext.toString(),
                                  style: const TextStyle(color: Colors.white),
                                ),
                                Text(
                                  goals.secoundtext.toString(),
                                  style: const TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class DateList {
  int? number;
  String? days;

  DateList(this.number, this.days);
}

List<DateList> datelist = [
  DateList(29, "SUN"),
  DateList(30, "Mon"),
  DateList(31, "TUE"),
  DateList(01, "WED"),
  DateList(02, "THR"),
  DateList(03, "FRI"),
  DateList(04, "SAT"),
];
