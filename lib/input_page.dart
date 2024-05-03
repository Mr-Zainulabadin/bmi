import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  child: ContainerRepeated(
                    colors: Color(0xFF1D1E33),
                    cardWidget: RepeatedIcon(
                      iconData: FontAwesomeIcons.male,
                      label: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: ContainerRepeated(
                    colors: Color(0xFF1D1E33),
                    cardWidget: RepeatedIcon(
                      iconData: FontAwesomeIcons.female,
                      label: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ContainerRepeated(
                    colors: Colors.blue,
                    cardWidget: Text('Some Widget'),
                  ),
                ),
                Expanded(
                  child: ContainerRepeated(
                    colors: Color(0xFF1D1E33),
                    cardWidget: Text('Another Widget'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ContainerRepeated(
              colors: Color(0xFF1D1E33),
              cardWidget: Text('Single Widget'),
            ),
          ),
        ],
      ),
    );
  }
}

class RepeatedIcon extends StatelessWidget {
  RepeatedIcon({required this.iconData, required this.label});

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}

class ContainerRepeated extends StatelessWidget {
  ContainerRepeated({required this.colors, required this.cardWidget});
  final Color colors;
  final Widget cardWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: cardWidget,
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
