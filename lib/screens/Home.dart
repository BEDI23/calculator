import 'package:calculator/contents/color.dart';
import 'package:calculator/models/calcul.dart';
import 'package:calculator/widgets/Button.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                color: button,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(input,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(output,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                      fontSize: 34,
                    ),
                  ),
              ],
                ),
              )
          ),



          Row(
            children:[
              Button(text: 'AC',textColor: valbutt, backgroundColor: background,  ),
              Button(text: '( ) ', backgroundColor: background,textColor: valbutt,),
              Button(text: '%', backgroundColor: background,textColor: valbutt,),
              Button(text: '/', backgroundColor: background,textColor: valbutt,),

            ],
          ), Row(
            children:[
              Button(text: '7', ),
              Button(text: '8', ),
              Button(text: '9', ),
              Button(text: '*',backgroundColor: background,textColor: valbutt, ),

            ],
          ), Row(
            children:[
              Button(text: '6', ),
              Button(text: '5', ),
              Button(text: '4', ),
              Button(text: '-', backgroundColor: background,textColor: valbutt,),

            ],
          ), Row(
            children:[
              Button(text: '1', ),
              Button(text: '2', ),
              Button(text: '3', ),
              Button(text: '+',backgroundColor: background,textColor: valbutt, ),

            ],
          ), Row(
            children:[
              Button(text: '0', ),
              Button(text: '.', ),
              Button(text: 'SUP', backgroundColor: background,textColor: valbutt,),
              Button(text: '=', backgroundColor: background,textColor: valbutt, ),

            ],
          ),
        ],
      ),
    );
  }
}



