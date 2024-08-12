import 'package:fitness/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ModeTracker extends StatefulWidget {
  const ModeTracker({Key? key}) : super(key: key);

  @override
  State<ModeTracker> createState() => _ModeTrackerState();
}

class _ModeTrackerState extends State<ModeTracker> {
  String _moodText = '';
  String _moodImage = 'assets/images/great.jpeg'; // Default image

  String getRatingText(String mood) {
    switch (mood) {
      case 'Great':
        return '5 - Great';
      case 'Good':
        return '4 - Good';
      case 'Natural':
        return '3 - Natural';
      case 'Sad':
        return '2 - Sad';
      case 'Bad':
        return '0 - Bad';
      default:
        return 'Unknown';
    }
  }

  String getMoodImage(String mood) {
    switch (mood) {
      case 'Great':
        return 'assets/images/great.jpeg';
      case 'Good':
        return 'assets/images/good.jpg';
      case 'Natural':
        return 'assets/images/natural.png';
      case 'Sad':
        return 'assets/images/sad.png';
      case 'Bad':
        return 'assets/images/bad.jpg';
      default:
        return 'assets/images/great.jpeg'; // Default image
    }
  }

  void _updateMood(String mood) {
    setState(() {
      _moodText = getRatingText(mood);
      _moodImage = getMoodImage(mood);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          SizedBox(
            height: 80,
          ),
          Text(
            "How was your day today?",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(children: [
                  Text("Mood"),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    _moodImage,
                    height: 100,
                    width: 100,
                  )
                ]),
              ),
              Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(children: [
                  Text("Score"),
                  Image.asset(
                    "assets/images/score.png",
                    height: 100,
                    width: 100,
                  ),
                  Text(
                    _moodText,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "I am feeling",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => _updateMood('Great'),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    Image.asset(
                      "assets/images/great.jpeg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Great"),
                  ]),
                ),
              ),
              GestureDetector(
                onTap: () => _updateMood('Good'),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    Image.asset(
                      "assets/images/good.jpg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Good"),
                  ]),
                ),
              ),
              GestureDetector(
                onTap: () => _updateMood('Natural'),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    Image.asset(
                      "assets/images/natural.png",
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Natural"),
                  ]),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => _updateMood('Sad'),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    Image.asset(
                      "assets/images/sad.png",
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Bad"),
                  ]),
                ),
              ),
              GestureDetector(
                onTap: () => _updateMood('Bad'),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    Image.asset(
                      "assets/images/bad.jpg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Sad"),
                  ]),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              if (_moodText.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Please give your Mood updated'),
                  ),
                );
              } else {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dashboard()));
              }
            },
            child: Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(20)),
              child: Text("Let's Go"),
            ),
          )
        ]),
      ),
    );
  }
}
