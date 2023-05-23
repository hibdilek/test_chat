import 'package:flutter/material.dart' ;

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

              primary: Colors.white,
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