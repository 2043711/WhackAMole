import "package:flutter/material.dart";

class ButtonMenu extends StatefulWidget {
  final Color colorBox;
  final Size size;
  final Function? action;
  final String text;
  final FontWeight fontWeight;

  const ButtonMenu(
      {required this.size, this.colorBox = Colors.transparent, this.fontWeight = FontWeight.normal,  this.action, required this.text, super.key});
  @override
  State<ButtonMenu> createState() => _ButtonMenuState();
}

class _ButtonMenuState extends State<ButtonMenu> {
  double scale = 1;
  Color couleur = Colors.transparent;
  Color couleurTexte = Colors.white;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTapDown: (details) {
          setState(() {
            scale = 1.2;
            couleur = widget.colorBox;
            couleurTexte = Colors.black;
          });
        },
        onTapUp: (details) {
          setState(() {
            scale = 1;
            couleur = Colors.transparent;
            couleurTexte = Colors.white;
          });
        },
        onTap: (() {
          widget.action?.call();
        }),
        child :AnimatedScale(duration: const Duration(milliseconds: 180),
        scale: scale,
        curve: Curves.easeIn,
        child: Container(
          height: widget.size.height,
          width: widget.size.width,
          decoration: BoxDecoration(
            color: couleur,
            borderRadius: BorderRadius.circular(100.0),
            border: Border.all(
              color: widget.colorBox,
              width: 2,
            ),
          ),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                color: couleurTexte,
                fontSize: 20,
                fontWeight: widget.fontWeight,
              ),
            ),
          ),
        ),
        )
      );
  }
}