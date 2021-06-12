import 'package:demo2_dashboard/widgets/components/appbar.dart';
import 'package:demo2_dashboard/widgets/components/main_menu_center.dart';
import 'package:demo2_dashboard/widgets/components/main_menu_left.dart';
import 'package:demo2_dashboard/widgets/components/main_menu_right.dart';
import 'package:flutter/material.dart';

class Node_Layout_Center extends StatefulWidget {
  Node_Layout_Center({Key? key}) : super(key: key);

  @override
  _Node_Layout_CenterState createState() => _Node_Layout_CenterState();
}

class _Node_Layout_CenterState extends State<Node_Layout_Center> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            App_Bar(),
            //  All_Body(),
            midui()
          ],
        ),
      ),
    );
  }
}

//==================================================================================================

class All_Body extends StatefulWidget {
  All_Body({Key? key}) : super(key: key);

  @override
  _All_BodyState createState() => _All_BodyState();
}

class _All_BodyState extends State<All_Body> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Menu_left(),
        ),
        Expanded(
          flex: 8,
          child: Mainmenu_center(),
        ),
        Expanded(
          flex: 3,
          child: Mainmenu_Right(),
        )
      ],
    );
  }
}

class midui extends StatefulWidget {
  midui({Key? key}) : super(key: key);

  @override
  _miduiState createState() => _miduiState();
}

class _miduiState extends State<midui> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: 1101,
      width: 1440,
      child: All_Body(),
    ));
  }
}
