import 'package:bmi_medium/components/box.dart';
import 'package:bmi_medium/components/icon_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 80.0;
const Color darkPurple = Color(0XFF1D1E33);
const Color darkPink = Color(0xffeb1555);

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
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
          const Expanded(
            child: Row(
              children: [
                Box(
                  color: darkPurple,
                  boxChild: IconText(
                    icon: FontAwesomeIcons.mars,
                    txt: 'MALE',
                  ),
                ),
                Box(
                  color: darkPurple,
                  boxChild: IconText(
                    icon: FontAwesomeIcons.venus,
                    txt: 'FEMALE',
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Box(
              color: darkPurple,
              boxChild: null,
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Box(
                  color: darkPurple,
                  boxChild: null,
                ),
                Box(
                  color: darkPurple,
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
