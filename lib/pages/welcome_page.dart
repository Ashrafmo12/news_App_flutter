import 'package:flutter/material.dart';
import 'package:news_app/Components/custom_button_category.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 70,),
                Text("Welcome To Our News App",
                  style: TextStyle(fontSize: 25,fontStyle:FontStyle.italic ),),
                SizedBox(height: 200,),
                Text("Choose Your Category",style: TextStyle(fontSize: 20),),
                SizedBox(height: 10,),
                CustomButtonCategory(text: "Business",i: Icons.business,cat: "business",),
                SizedBox(height: 20,),
                CustomButtonCategory(text: "Entertainment",i: FontAwesomeIcons.film,cat:"entertainment" ,),
                SizedBox(height: 20,),
                CustomButtonCategory(text: "General",i: FontAwesomeIcons.listCheck,cat:"general"),
                SizedBox(height: 20,),
                CustomButtonCategory(text: "Sports",i: Icons.sports,cat:"sports"),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
