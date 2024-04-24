import 'package:bmi_medium/components/box.dart';
import 'package:bmi_medium/components/icon_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 80.0;
const Color darkPurple1 = Color.fromRGBO(36, 37, 65, 1);
const Color darkPurple2 = Color(0XFF1D1E33);
const Color darkPink = Color(0xffeb1555);

enum Gender { male, female }

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  Color activeButton = darkPurple2;
  Color inActiveButton = darkPurple1;

  Gender? isActive;

  void buttonActive(Gender gender) {
    setState(() {
      isActive = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Box(
                  color:
                      isActive == Gender.male ? activeButton : inActiveButton,
                  boxChild: IconText(
                    onTap: () {
                      buttonActive(Gender.male);
                    },
                    icon: FontAwesomeIcons.mars,
                    txt: 'MALE',
                  ),
                ),
                Box(
                  color:
                      isActive == Gender.female ? activeButton : inActiveButton,
                  boxChild: IconText(
                    onTap: () {
                      buttonActive(Gender.female);
                    },
                    icon: FontAwesomeIcons.venus,
                    txt: 'FEMALE',
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Box(
              color: darkPurple1,
              boxChild: null,
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Box(
                  color: darkPurple1,
                  boxChild: null,
                ),
                Box(
                  color: darkPurple1,
                  boxChild: null,
                ),
              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: darkPink,
            ),
          )
        ],
      ),
    );
  }
}
