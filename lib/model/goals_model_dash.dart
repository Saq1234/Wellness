import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GoalsMOdelDash{
  int? value;
  String? rangvalue;
  String? rangvaluetext;
  String? firsttext;
  String? secoundtext;
  String? title;
  String? myicon;
  GoalsMOdelDash(this.value,this.rangvalue,this.firsttext,this.secoundtext,this.title,this.rangvaluetext,this.myicon);
}
List<GoalsMOdelDash> goalmodeldaslist=[
  GoalsMOdelDash(80, "5", "Glasses of", " water", "Hydration Goal","/6","assets/images/dropa.png",
  ),GoalsMOdelDash(70, "105", "Calories", " Burned", "Hydration Goal","/300","assets/images/fire.png",
  ),GoalsMOdelDash(80, "8k", "steps", "", "Hydration Goal","/14k","assets/images/foot.jpeg",
  ),


];
