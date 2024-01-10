import 'package:dice/dice_roller.dart';
import 'package:flutter/material.dart';

//const compile time constant

// const dynamic startAlignment = Alignment.topLeft;
// const dynamic endAlignment = Alignment.bottomRight;

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //Initialization function with named arguments and super calls the constructor function of the super class or the parent class (StatelessWidget)
  const GradientContainer({super.key, required this.colors});

  // const GradientContainer.purple({super.key}, color1, color2)
  //     : color1 = Colors.deepPurple,
  //       color2 = Colors.indigo;              when GradientContainer.purple() is called, the color will be used as the color for the background

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors, //[color1, color2]
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
