import 'package:flutter/material.dart';
import 'customwidget.dart' ;

const startAlign = Alignment.bottomLeft ;
const endAlign = Alignment.topRight ;

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

            child: CustomWidget("Ibrahim")
        )


    );


  }




}


