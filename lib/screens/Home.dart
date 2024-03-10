import 'package:calculator/contents/color.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  double firstNumt=0.0;
  double secondNum=0.0;

  var input ='';
  var output ='';
  var operation ='';
  var hideinput = false;
  var outputSize = 34.0;

  void onButtonClick(String value) {
    print(value);

    switch (value) {
      case "AC":
        input = '';
        output = '';
        hideinput = false;
        outputSize = 22;
        break;
      case "=":
        if (input.isNotEmpty) {
          final userInput = input.replaceAll("x", "*");
          try {
            final expression = Parser().parse(userInput);
            final result = expression.evaluate(EvaluationType.REAL, ContextModel());
            output = result.toString().replaceAll(".o", "");
            input = output;
            hideinput = true;
            outputSize = 52;
          } catch (error) {
            output = "Erreur";
          }
        }
        break;
      default:
        input += value;
        break;
    }

    setState(() {});
  }

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
                  Text(
                    hideinput ? '' : input,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(output,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                      fontSize: outputSize,
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


  Widget Button ({text,textColor = Colors.black,backgroundColor = button,}) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            primary: backgroundColor,
            padding: EdgeInsets.all(22.0),
          ),
          onPressed: () => onButtonClick(text),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),      ),
    );
  }
}




