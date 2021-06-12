import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class App_Bar extends StatefulWidget {
  App_Bar({Key? key}) : super(key: key);

  @override
  _App_BarState createState() => _App_BarState();
}

class _App_BarState extends State<App_Bar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      color: Color(0xff0b1327),
      child: Row(
//mainAxisAlignment: MainAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 25,
                ),
                Logo_1(),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [LoginPack()],
            ),
          )

          // LoginPack()
        ],
      ),
    );
  }

  Widget Logo_1() => Container(
        color: Color(0xff0b1327),
        child: Text(
          "MINDFIT",
          style: TextStyle(
            fontFamily: 'Mitr',
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            letterSpacing: 0,
          ),
        ),
      );
//============================================================

  Widget Icon_Noti() => Container(
        child: Image.asset("assets/icons/icon-notifications.png"),
        width: 24,
        height: 24,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
      );
}

class Time_ extends StatefulWidget {
  Time_({Key? key}) : super(key: key);

  @override
  _Time_State createState() => _Time_State();
}

class _Time_State extends State<Time_> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 1)),
      builder: (context, snapshot) {
        return Center(
          child: Text(
            DateFormat(' hh:mm').format(DateTime.now()),
            style: TextStyle(
              fontFamily: 'Mitr',
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
            ),
          ),
        );
      },
    );
  }
}

class LoginPack extends StatefulWidget {
  LoginPack({Key? key}) : super(key: key);

  @override
  _LoginPackState createState() => _LoginPackState();
}

class _LoginPackState extends State<LoginPack> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Row(
          children: <Widget>[
            Time_(),
            SizedBox(
              width: 17,
            ),
            Icon_Noti(),
            SizedBox(
              width: 1,
            ),
            SizedBox(
              width: 10,
            ),
            Icon_Pro(),
            SizedBox(
              width: 25,
            ),
          ],
        ),
      ),
    );
  }

  Widget Icon_Noti() {
    return Container(
        width: 24,
        height: 24,
        decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.brown.shade300));
  }

  Widget Icon_Pro() {
    return Container(
      child: Image.asset("assets/icons/icon-notifications.png"),
      width: 24,
      height: 24,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
