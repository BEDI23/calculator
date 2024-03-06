import 'package:calculator/contents/color.dart';
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
              child: Container(color: Colors.red,)
          ),
          Row(
            children:[
              Button(text: 'AC',textColor: valbutt, backgroundColor: background,  ),
              Button(text: '( )', backgroundColor: background,textColor: valbutt,),
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



