import 'package:flutter/material.dart';
import 'package:test_chat/dice_roller.dart' ;

const startAlign = Alignment.bottomLeft ;
const endAlign = Alignment.topRight ;
final List<String> image = ["assets/images/dice-1.png","assets/images/dice-2.png","assets/images/dice-3.png","assets/images/dice-4.png","assets/images/dice-5.png","assets/images/dice-6.png"];
class GradientController extends StatelessWidget{



   const GradientController(this.colors, {super.key});
  final List<Color> colors ;



  @override
  Widget build(context){
    return Container(
        decoration:  BoxDecoration(

            gradient: LinearGradient(colors: colors)

        ),
        child :  Center(

          child : DiceRoller(),



        )


    );


  }





}



