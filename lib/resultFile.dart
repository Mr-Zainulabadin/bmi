import 'package:flutter/material.dart';
import 'constantFile.dart';
import 'container_file.dart';
import 'input_page.dart';
import 'constantFile.dart';

class ResultScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                'Your Result', style: kTittleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ContainerRepeated(
              colors: activeColor,
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Normal',
                    style: kresultStyle,
                  ),
                  Text(
                    '180',
                    style: kresultStyle,
                  ),
                  Text(
                    'BMI is low you should have to work more',
                    textAlign: TextAlign.center,
                    style: kresultStyle,
                  ),
                ],

              ), onPressed: () {},
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InputPage()));
              },
              child: Container(
                child: Center(
                  child: Text('ReCalculate',
                    style: klargeButtons,),
                ),

                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,
              ),),
          ),
        ],
      ),
    );
  }
}