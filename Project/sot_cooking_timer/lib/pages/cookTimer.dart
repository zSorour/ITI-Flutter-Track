import 'dart:async';
import 'dart:ui';
import 'package:audioplayers/audioplayers.dart';
import 'package:sot_cooking_timer/helpers/timeFormatter.dart';
import 'package:sot_cooking_timer/models/foodItem.dart';
import 'package:flutter/material.dart';

class CookTimer extends StatefulWidget {
  FoodItem food;

  CookTimer(this.food);

  @override
  _CookTimerState createState() => _CookTimerState();
}

class _CookTimerState extends State<CookTimer> {
  Timer _timer;
  bool _timerRunning;
  Icon _actionButtonIcon;
  Color _progressColor;
  String _statusMessage;
  String _foodStatus;
  AudioCache audioPlayer;

  void pauseTimer() {
    setState(() {
      _timer.cancel();
      _timerRunning = false;
      _actionButtonIcon = Icon(Icons.play_arrow);
      audioPlayer.clearAll();
    });
  }

  void setProgressColor() {
    _progressColor = Colors.red;
  }

  void startTimer() {
    setState(() {
      _timerRunning = true;
      _actionButtonIcon = _actionButtonIcon = Icon(Icons.pause);
      _timer = Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          widget.food.incrementCurrentTime();

          String newFoodStatus = widget.food.getStatus();

          if (newFoodStatus == 'Cooked') {
            if (newFoodStatus != _foodStatus) {
              audioPlayer.play('sounds/cooked.mp3');
              _foodStatus = newFoodStatus;
            }
            setProgressColor();
            _statusMessage = 'Remove before getting burnt!';
          } else if (widget.food.getStatus() == 'Overcooked') {
            if (newFoodStatus != _foodStatus) {
              audioPlayer.play('sounds/fire.mp3');
              _foodStatus = newFoodStatus;
            }
            _statusMessage = 'BURNT!!!';
          }
        });
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _progressColor = Colors.amber;
    _statusMessage = 'Cooking...';
    _foodStatus = 'Raw';
    audioPlayer = new AudioCache();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    widget.food.reset();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SoT Cooking Timer',
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              color: Colors.amber,
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${widget.food.getName()} Cooking Timer',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 26, color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black,
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          'Undercooked',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                        getFormattedTime(widget.food.getUndercookedTime()),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 2),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          'Overcooked',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                        getFormattedTime(widget.food.getOvercookedTime()),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 2),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black,
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          'Cooked',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                        getFormattedTime(widget.food.getCookedTime()),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 2),
                      ),
                    ],
                  )
                ],
              ),
            ),

            //Timer and Progress Bar
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //Status Message
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: Text(
                    _statusMessage,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25, color: Colors.white, height: 1.2),
                  ),
                ),
                //Circular Progress Indicator
                Container(
                  height: 200,
                  margin: const EdgeInsets.only(top: 30),
                  child: Stack(
                    children: [
                      Center(
                        child: SizedBox(
                          height: 200,
                          width: 200,
                          child: CircularProgressIndicator(
                            value: widget.food.getCookedPercentage(),
                            backgroundColor: Colors.white,
                            strokeWidth: 10,
                            color: _progressColor,
                          ),
                        ),
                      ),
                      Center(child: Image.asset(widget.food.getImgPath())),
                    ],
                  ),
                ),
                //Timer
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: Text(
                    getFormattedTime(widget.food.getCurrentTime()),
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                //Action Buttons
                Container(
                  margin: const EdgeInsets.only(top: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        child: IconButton(
                          color: Colors.white,
                          icon: _actionButtonIcon,
                          onPressed: () {
                            if (_timerRunning) {
                              pauseTimer();
                            } else {
                              startTimer();
                            }
                          },
                          iconSize: 60,
                        ),
                        backgroundColor: Colors.black,
                        radius: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
