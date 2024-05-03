import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'container_file.dart';
import 'icon_file.dart';

const activeColor = Color(0xFF393A5D);
const deactiveColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = deactiveColor;
  Color femaleColor = deactiveColor;

  void updateColor(int gender) {
    setState(() {
      if (gender == 1) {
        maleColor = activeColor;
        femaleColor = deactiveColor;
      } else if (gender == 2) {
        maleColor = deactiveColor;
        femaleColor = activeColor;
      }
    });
  }

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
                  child: GestureDetector(
                    onTap: () {
                      updateColor(1);
                    },
                    child: ContainerRepeated(
                      cardWidget: RepeatedIcon(
                        color: maleColor,
                        iconData: FontAwesomeIcons.male,
                        label: 'Male',
                      ),
                      colors: maleColor,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateColor(2);
                    },
                    child: ContainerRepeated(
                      cardWidget: RepeatedIcon(
                        color: femaleColor,
                        iconData: FontAwesomeIcons.female,
                        label: 'Female',
                      ),
                      colors: femaleColor,
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
