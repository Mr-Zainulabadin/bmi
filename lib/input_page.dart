import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new containerRepeted(colors: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: new containerRepeted(colors: Color(0xFF1D1E33),
                  ),
                  ),

              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child:  new containerRepeted(colors: Colors.blue),

                ),
                Expanded(
                  child:  new containerRepeted(colors: Color(0xFF1D1E33),),
                ),
              ],
            ),
          ),
          Expanded(
            child:  new containerRepeted(colors: Color(0xFF1D1E33),),
          ),
        ],
      ),
    );
  }
}

class containerRepeted extends StatelessWidget {
  containerRepeted({required this.colors});
  final Color colors;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
