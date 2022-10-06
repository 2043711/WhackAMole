import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:whack_a_mole/pages/about.dart';
import 'background.dart';
import 'button_main.dart';
import 'button_menu.dart';
import 'highscores.dart';
import 'validator.dart';

//create home class
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(141, 13, 29, 49),
      body: Stack(
        children: <Widget>[
          const Background(),
            Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                    ButtonMain(size: Size.square(100), colorBorder: Color.fromARGB(255, 88, 209, 255), widthBorderRound: 32.0, colorWave: Color.fromARGB(90, 88, 209, 255),), 
                    Padding(padding: EdgeInsets.all(250)),
                ]
              )
            ),
      Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            const SizedBox(
              height: 20
            ),
            const Text(
              'WHACK-A-MOLE',
              //text in white
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'EVERY TAP MATTERS',
              style: TextStyle(
                color: Color.fromARGB(255, 88, 209, 255),
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 40,),
            //create button to start the game
              ButtonMenu(
                size: const Size(250, 50),
                colorBox: const Color.fromARGB( 255, 88, 209, 255),
                fontWeight: FontWeight.bold,
                action: () {
                  log("New Game");
                },
                text: "NEW GAME",
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonMenu(
                size: const Size(250,50),
                colorBox: Colors.white,
                action: () {
                  Navigator.push(
                    context,
                  MaterialPageRoute(builder: (context) => const HighScores()),
                  );
                  log("high scores");
                },
                text: "HIGH SCORES",
                ),
                const SizedBox(
                  height: 20,
                ),
              ButtonMenu(
                size: const Size(250,50),
                colorBox: Colors.white,
                action: () {
                  Navigator.push(
                    context,
                  MaterialPageRoute(builder: (context) => const Validator()),
                  );
                  log("scores validator");
                },
                text: "SCORES VALIDATOR",
              ),
                const SizedBox(
                  height: 20,
                ),
              ButtonMenu(
                size: const Size(250,50),
                colorBox: Colors.white,
                action: () {
                  Navigator.push(
                    context,
                  MaterialPageRoute(builder: (context) => const About()),
                  );
                  log("about");
                },
                text: "ABOUT",
              ),
              const Spacer(),

          ],
        ),
      ),
        ],
      ),
    );
  }
}
