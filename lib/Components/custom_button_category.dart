import 'package:flutter/material.dart';
import 'package:news_app/pages/news_apge.dart';

class CustomButtonCategory extends StatelessWidget {
   CustomButtonCategory({required this.text,required this.i,required this.cat});
   var text;
   var cat;
   IconData? i;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40,right: 40),
      child: ElevatedButton(
         style: ElevatedButton.styleFrom(
           minimumSize: Size(250, 50),
           backgroundColor: Colors.black,
           elevation: 10.0,
           iconColor: Colors.white,
           surfaceTintColor: Colors.grey,
           overlayColor: Colors.grey,
           animationDuration:Duration(seconds: 3),
           side: BorderSide(
             color: Colors.black
           )
         ),
          onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) => News(cat: cat,),));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(i),
              SizedBox(width: 10,),
              Text(text,style: TextStyle(color: Colors.white),),
            ],
          )
      ),
    );
  }
}
