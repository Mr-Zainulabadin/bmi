import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'container_file.dart';
import 'icon_file.dart';
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




