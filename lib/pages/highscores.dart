import 'package:flutter/material.dart';
import 'background.dart';
import 'button_menu.dart';


class HighScores extends StatelessWidget {
  const HighScores({Key? key}) : super(key: key);

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
              children: <Widget>[
                const Padding(padding: EdgeInsets.all(20)),
                const Text(
                'HIGHSCORES',
                //text in white
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
              ),
            ),
            //create listView with 100 inputs 
            SizedBox(height: 400,
              child: Card(
                //margin left and right
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                color: Colors.transparent,
                child : RawScrollbar(
                //change color of scrollbar
                thumbVisibility: true,
                thumbColor: const Color.fromARGB(255, 90, 90, 90),
                thickness: 10,
                radius: const Radius.circular(20),
                child: ListView.builder(
                shrinkWrap: true,
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) {
                  DateTime time = DateTime.now();
                  int score = 100 - index;
                  //change datetime format to jj/mm/aaaa hh:mm:ss keep 0 in front of single digit
                  String formattedDate = "${time.day.toString().padLeft(2, '0')}/${time.month.toString().padLeft(2, '0')}/${time.year.toString().padLeft(4, '0')} ${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}:${time.second.toString().padLeft(2, '0')}";
                  return Card(
                    color: Colors.transparent,
                    margin: const EdgeInsets.only(right: 10, bottom: 2),
                    child: ListTile(
                    //one of two colors for each line of the list
                    tileColor: index % 2 == 0 ? const Color.fromARGB(255, 51, 51, 51) : const Color.fromARGB(255, 68, 68, 68),
                    //see a scrollbar
                    dense: true,
                    hoverColor: const Color.fromARGB(255, 97, 143, 224),
                    title: Padding(padding: const EdgeInsets.all(30.0), child: Text('$formattedDate   PLAYER1       $score', style: const TextStyle(color: Colors.white, fontSize: 14),)),
                    onTap:() { }
                    ),
                  );
                },
              )
            ),),
            ),
            const SizedBox(
              height: 20
            ),
            ButtonMenu(
              size: const Size(250, 50),
              colorBox: const Color.fromARGB(255, 88, 209, 255),
              fontWeight: FontWeight.bold,
              action: () {
                  Navigator.of(context).pop();
                },
              text: "BACK TO MENU",
            ),
            const Spacer(),
              ]
            )
          )
        ],
      ),
    );
  }
}