import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
        repeat: ImageRepeat.repeat,
        image: Svg('lib/assets/backgroundPattern.svg', size: Size.square(35)),
        opacity: 0.3,
      )),
    child : const Scaffold(
      backgroundColor: Color.fromARGB(141, 13, 50, 80)
    )
    );
  }
}
