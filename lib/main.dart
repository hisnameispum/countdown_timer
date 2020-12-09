import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Pomodoro(),
));

class Pomodoro extends StatefulWidget {
  @override
  _PomodoroState createState() => _PomodoroState();
}

class _PomodoroState extends State<Pomodoro> {
  double percent = 0;
  static int timeInMinute = 25;
  int timeInSeconds = timeInMinute * 60;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff1542bf), Color(0xff51abff)],
              begin: FractionalOffset(0.5,1),
            )
          ),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Text(
                  "Nurture Timer",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
              ),
              Expanded(
                child: CircularPercentIndicator(
                  percent: percent,
                  animation: true,
                  animateFromLastPercent: true,
                  radius: 250,
                  lineWidth: 10,
                  progressColor: Colors.white,
                  center: Text(
                    "$timeInMinute",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                    ),
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
