import 'package:flutter/material.dart';
import 'background.dart';
import 'button_main.dart';


class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(141, 13, 29, 49),
      body: Stack(
        children: <Widget>[
          const Background(),
          Column(
            children: <Widget>[
              const Spacer(),
              //make horizontal white line
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: const Divider(
                  color: Colors.white,
                  height: 20,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
              ),
              const Text(
                'ABOUT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
              ),),
              const Padding(padding: EdgeInsets.all(20), 
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut varius sapien, a porta neque. Donec ullamcorper odio non massa hendrerit pulvinar. Curabitur felis lacus, ullamcorper ac bibendum eget, congue eget justo. Curabitur porta velit quam. Pellentesque elementum ut nulla sit amet tincidunt. Curabitur ac elementum dui. Ut eget odio tortor. Nam tempor porttitor lectus, id varius magna. Quisque ut arcu sit amet metus egestas imperdiet.",
              textAlign: TextAlign.center, style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),),
              ),
              Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: const Divider(
                    color: Colors.white,
                    height: 20,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                ),

                ButtonMain(size: const Size.square(75), colorBorder: Colors.white, widthBorderRound: 24, colorWave: const Color.fromARGB(95, 255, 255, 255),
                action: () {
                  Navigator.of(context).pop();
                },
                ),
                const Spacer(),
                ],
              )               
            ],
          )
    );
  }
}