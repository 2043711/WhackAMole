import "package:flutter/material.dart";
import 'package:im_animations/im_animations.dart';

class ButtonMain extends StatefulWidget {
  final Size size;
  final Function? action;
  final Color colorBorder;
    final Color colorWave;
  final double widthBorderRound;

  const ButtonMain(
      {required this.size, this.action, required this.colorWave,  this.colorBorder = Colors.white, required this.widthBorderRound, super.key});
  @override
  State<ButtonMain> createState() => _ButtonMainState();
}

class _ButtonMainState extends State<ButtonMain> {
  double myscale = 1;
  double scaleWidth = 1;
  double widthBorder = 35.0;
  @override
  Widget build(BuildContext context) {
    return InkWell( 
        onTapDown: (details) {
          setState(() {
            myscale = 2;
          });
        },
        onTapUp: (details) {
          setState(() {
            myscale = 1;
          });
        },
        onTap: (() {
          widget.action?.call();
        }),
        child: AnimatedScale(
          scale: myscale,
          duration: const Duration(milliseconds: 150),
          curve: Curves.easeInOut,
          child: AnimatedContainer(
              margin: EdgeInsets.all(widget.size.height*0.25),
              height: widget.size.height,
              width: widget.size.width,
              color: Colors.transparent,
              duration: const Duration(milliseconds: 150),
              curve: Curves.easeIn,
              child: Material(
                color: Colors.transparent,
                  child: Sonar(
                    duration: const Duration(seconds: 1, microseconds: 580000),
                    waveThickness: 3,
                    waveColor: widget.colorWave,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: widget.colorBorder,
                          width: widget.widthBorderRound,
                        ),
                        ),
                      ),
                    ),
                  ),
                ),
        )
        );
  }
}