import 'package:flutter/material.dart' ;


const int min = 1;
const int max = 6;


class CustomWidget extends StatelessWidget{
  CustomWidget(this.customText , {key}) : super(key:key)  ;
  //CustomWidget({super.key}) ;  also applicable
  final String customText ;
  String? answer ;

  TextEditingController controller = TextEditingController();

  @override
  Widget build(context){

    return MaterialApp(

      home: Container(

        child : Column(
        children: [
           Material(

            child: Align (


              child : TextField(

                controller: controller,

              )

          ),

          ),

          ElevatedButton(
            onPressed: (){


              print(controller.text);
            },
            style: ElevatedButton.styleFrom(

              backgroundColor: Colors.white,
              elevation: 45,

            ),
            child: Text(customText, style:  TextStyle(
              color: Colors.red,
              fontSize: 15,

            )),


          ),

        ],
      ),
      ),
    );

  }

}