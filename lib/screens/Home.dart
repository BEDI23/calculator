import 'package:calculator/contents/color.dart';
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
              Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        primary: button,
                        padding: EdgeInsets.all(22)
                      ),
                      onPressed: () {},
                      child: Text('1',style: TextStyle(
                        color:Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                        ),
                      ),
                    ),
                  ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
