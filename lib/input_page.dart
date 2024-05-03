import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'container_file.dart';
import 'icon_file.dart';

const activeColor = Color(0xFF393A5D);
const deactiveColor = Color(0xFF111328);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male; // Initialized to Gender.male

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
                      onPressed: (){
                        setState(() {
                          selectedGender=Gender.male;
                        });
                      },
                      cardWidget: RepeatedIcon(
                        color: selectedGender == Gender.male ? activeColor : deactiveColor,
                        iconData: FontAwesomeIcons.male,
                        label: 'Male',
                      ),
                      colors: selectedGender == Gender.male ? activeColor : deactiveColor,
                    ),

                ),
                Expanded(

                    child: ContainerRepeated(
                      onPressed: (){
                        setState(() {
                          selectedGender=Gender.female;
                        });
                      },
                      cardWidget: RepeatedIcon(
                        color: selectedGender == Gender.female ? activeColor : deactiveColor,
                        iconData: FontAwesomeIcons.female,
                        label: 'Female',
                      ),
                      colors: selectedGender == Gender.female ? activeColor : deactiveColor,
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
                    cardWidget: Text('Some Widget'), onPressed: () {  },
                  ),
                ),
                Expanded(
                  child: ContainerRepeated(
                    colors: Color(0xFF1D1E33),
                    cardWidget: Text('Another Widget'), onPressed: () {  },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ContainerRepeated(
              colors: Color(0xFF1D1E33),
              cardWidget: Text('Single Widget'), onPressed: () {  },
            ),
          ),
        ],
      ),
    );
  }
}
