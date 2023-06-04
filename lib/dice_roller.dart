import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget{



   DiceRoller({super.key}) ;
  @override
  State<DiceRoller> createState() {
      return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var currentDiceImage = "assets/images/dice-1.png" ;
  var currentDiceImage2 = "assets/images/dice-1.png" ;


  void rollDice(){
    //..
    setState(() {
      Random rnd;
      Random rnd2;
      const int min = 1;
      const int max = 6;
      rnd = Random();
      int r = min + rnd.nextInt(max - min);
      rnd2 = Random();
      int r2= min + rnd2.nextInt(max - min);
      currentDiceImage = "assets/images/dice-" + r.toString() +  ".png" ;
      currentDiceImage2 = "assets/images/dice-" + r2.toString() +  ".png" ;
    });






  }
    build(context){
      return Column(
          mainAxisSize:MainAxisSize.min ,
          children: [
            SizedBox(


              width: 200,
              height : 60 ,
              child : ElevatedButton(

                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(5),

                  backgroundColor: Colors.transparent,
                  elevation: 45,

                ),
                onPressed: (){
                  rollDice();
                  if( currentDiceImage == "assets/images/dice-1.png" && currentDiceImage2 == "assets/images/dice-1.png" ) {
                    showDialog(context: context,
                        builder: (context) =>   Dialog(

                            shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.elliptical(5, 5))),
                            backgroundColor: Colors.amber,




                            child: Container(
                                padding: EdgeInsets.all(6),
                                child : const Text(
                                style: TextStyle(color: Colors.white, ),

                                "Exactly this dice has been made of bone of the faggot!") ) 

                        ));
                  }


                  },
                child: const Text("Random Button",
                  style:  TextStyle(
                    color: Colors.cyanAccent,
                    fontSize: 20,

                  ),
                ),
              ),),
            SizedBox(height: 20,width: 10,),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [

              Image.asset(currentDiceImage,width: 100,
            ),
              Image.asset(currentDiceImage2,width: 100,
              ),],),

            SizedBox(height: 20,width: 10,),






          ]
      );

    }


}

