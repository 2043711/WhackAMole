import 'dart:developer';
import 'package:flutter/material.dart';
import 'background.dart';
import 'button_menu.dart';


class Validator extends StatelessWidget {
  const Validator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(141, 13, 29, 49),
      body: Stack(
        children: <Widget>[
          const Background(),
          //icon in top left with text under it
          InkWell(
            //add image and text
            child: Column(
              children: const <Widget>[
                Padding(padding: EdgeInsets.all(20)),
                Image(
                  image: AssetImage('lib/assets/backIcon.png'),
                  width: 75,
                  height: 75,
                ),
                Text(
                  'BACK',
                  style: TextStyle(
                    color: Color.fromARGB(255, 88, 209, 255),
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    //underline text
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            onTap: () => Navigator.pop(context),
          ),
          Column(
            children: <Widget>[
              Container( 
                padding: const EdgeInsets.only(top: 100, left: 0),
                //child column with image and text
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    //Image asset
                    Image(
                      image: AssetImage('lib/assets/validate.png'),
                      width: 150,
                      height: 150,
                    ),
                    Text(
                      'SCORE VALIDATOR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                  ],
                ),
              ),
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
              Column(
                children: <Widget>[
                  //make three input fields for Date, name and score
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 90,
                          padding: const EdgeInsets.only(right: 10),
                          child: const Text("DATE:", 
                          style: TextStyle(
                            color: Colors.white, 
                            fontSize: 20, 
                            ), textAlign: TextAlign.right,
                            ),
                          ),
                        Container(
                          width: 250,
                          padding: const EdgeInsets.only(right: 10),
                          child: const TextField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color.fromARGB(255, 88, 209, 255)),
                              ),
                              labelText: 'MM/DD/YYYY',
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 88, 209, 255),
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),
                          ),
                        ),                        //name input field
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      Container(
                          width: 90,
                          padding: const EdgeInsets.only(right: 10),
                          child: const Text("NAME:", 
                          style: TextStyle(
                            color: Colors.white, 
                            fontSize: 20), textAlign: TextAlign.right,
                            ),
                          ), 
                        Container(
                          width: 250,
                          child: const TextField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color.fromARGB(255, 88, 209, 255)),
                              ),
                              
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),                        //name input field
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      Container(
                          width: 90,
                          padding: const EdgeInsets.only(right: 10),
                          child: const Text("SCORE:", 
                          style: TextStyle(
                            color: Colors.white, 
                            fontSize: 20), textAlign: TextAlign.right,
                            ),
                          ), 
                        Container(
                          width: 250,
                          child: const TextField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color.fromARGB(255, 88, 209, 255)),
                              ),
                              
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),                        //name input field
                      ],
                    ),
                  ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                ButtonMenu(
                  size: const Size(250, 50),
                  colorBox: const Color.fromARGB(255, 88, 209, 255),
                  fontWeight: FontWeight.bold,
                  action: () {
                      log('Validate button pressed');
                    },
                  text: "VALIDATE SCORE",
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
                const Text("Score exist :", style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),)
                ],
              )               
            ],
          )
      ],),
    );
  }
}