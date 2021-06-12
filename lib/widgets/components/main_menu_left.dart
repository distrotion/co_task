import 'package:flutter/material.dart';

class Menu_left extends StatefulWidget {
  Menu_left({Key? key}) : super(key: key);

  @override
  _Menu_leftState createState() => _Menu_leftState();
}

class _Menu_leftState extends State<Menu_left> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 1101,
      width: 200,
      color: Color(0xff0b1327),
      child: ListView(
        children: [Data_Menu_left()],
      ),
    );
  }
}

class Data_Menu_left extends StatelessWidget {
  const Data_Menu_left({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            onTap: () {},
            leading: Image.asset("assets/icons/icon-consult.png"),
            title: Text(
              "Clinic",
              style: TextStyle(
                fontFamily: 'Mitr',
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                letterSpacing: 0,
              ),
            ),
            onLongPress: () {},
            horizontalTitleGap: 2,
          ),
          ListTile(
            leading: Image.asset("assets/icons/icon-stat.png"),
            title: Text(
              "Stat",
              style: TextStyle(
                fontFamily: 'Mitr',
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                letterSpacing: 0,
              ),
            ),
            horizontalTitleGap: 2,
            onLongPress: () {},
          ),
          ListTile(
            leading: Image.asset("assets/icons/icon-appointment.png"),
            title: Text(
              "Schedule",
              style: TextStyle(
                fontFamily: 'Mitr',
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                letterSpacing: 0,
              ),
            ),
            horizontalTitleGap: 2,
            onLongPress: () {},
          ),
          ListTile(
            leading: Image.asset("assets/icons/icon-profile.png"),
            title: Text(
              "Patients",
              style: TextStyle(
                fontFamily: 'Mitr',
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                letterSpacing: 0,
              ),
            ),
            horizontalTitleGap: 2,
            onLongPress: () {},
          ),
          ListTile(
            leading: Image.asset("assets/icons/icon-profile.png"),
            title: Text(
              "Patients",
              style: TextStyle(
                fontFamily: 'Mitr',
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                letterSpacing: 0,
              ),
            ),
            horizontalTitleGap: 2,
            onLongPress: () {},
          ),
          ListTile(
            leading: Image.asset("assets/icons/icon-doctor.png"),
            title: Text(
              "Doctors",
              style: TextStyle(
                fontFamily: 'Mitr',
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                letterSpacing: 0,
              ),
            ),
            horizontalTitleGap: 2,
            onLongPress: () {},
          ),
          ListTile(
            leading: Image.asset("assets/icons/icon-finance.png"),
            title: Text(
              "Finence",
              style: TextStyle(
                fontFamily: 'Mitr',
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                letterSpacing: 0,
              ),
            ),
            horizontalTitleGap: 2,
            onLongPress: () {},
          ),
          Divider(
            color: Colors.white,
            height: 12,
          ),
          ListTile(
            leading: Image.asset("assets/icons/icon-cloud.png"),
            title: Text(
              "Storage",
              style: TextStyle(
                fontFamily: 'Mitr',
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                letterSpacing: 0,
              ),
            ),
            horizontalTitleGap: 2,
            onLongPress: () {},
          ),
          Loading_Show(),
          SizedBox(
            height: 12,
          ),
          Button_Update(),
          Divider(
            color: Colors.white,
            height: 12,
          ),
          ListTile(
            leading: Image.asset("assets/icons/icon-support.png"),
            title: Text(
              "Support",
              style: TextStyle(
                fontFamily: 'Mitr',
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                letterSpacing: 0,
              ),
            ),
            horizontalTitleGap: 2,
            onLongPress: () {},
          ),
          ListTile(
            leading: Image.asset("assets/icons/icon-setting.png"),
            title: Text(
              "Setting",
              style: TextStyle(
                fontFamily: 'Mitr',
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                letterSpacing: 0,
              ),
            ),
            horizontalTitleGap: 2,
            onLongPress: () {},
          ),
          Divider(
            color: Colors.white,
            height: 12,
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 24,
            width: 180,
            child: Row(
              children: [
                Image.asset("assets/icons/icon-cloud.png"),
                SizedBox(
                  width: 16,
                ),
                Image.asset("assets/icons/icon-internet.png"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Loading_Show extends StatefulWidget {
  Loading_Show({Key? key}) : super(key: key);

  @override
  _Loading_ShowState createState() => _Loading_ShowState();
}

class Button_Update extends StatefulWidget {
  Button_Update({Key? key}) : super(key: key);

  @override
  _Button_UpdateState createState() => _Button_UpdateState();
}

class _Button_UpdateState extends State<Button_Update> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text('UPGRADE'),
          backgroundColor: Color(0xff0b1327)),
    );
  }
}

class _Loading_ShowState extends State<Loading_Show> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 12,
      width: 150,
      child: LinearProgressIndicator(
        backgroundColor: Colors.grey.shade300,
        value: 0.5,
      ),
    );
  }
}
