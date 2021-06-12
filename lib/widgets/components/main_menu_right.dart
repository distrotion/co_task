import 'package:flutter/material.dart';

class Mainmenu_Right extends StatefulWidget {
  Mainmenu_Right({Key? key}) : super(key: key);

  @override
  _Mainmenu_RightState createState() => _Mainmenu_RightState();
}

class _Mainmenu_RightState extends State<Mainmenu_Right> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 1101,
      width: 304,
      color: Colors.cyan,
      child: Column(
        children: [List_Appoint()],
      ),
    );
  }
}

class List_Appoint extends StatefulWidget {
  @override
  _List_AppointState createState() => _List_AppointState();
}

class _List_AppointState extends State<List_Appoint> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: Color(0xff0b1327),
      height: 1101,
      width: 340,
      child: ListView(
        children: [
          Text_Appoint(),
          Data_test(),
          Data_test(),
          Data_test(),
          Data_test(),
          Data_test(),
          Data_test(),
        ],
      ),
    ));
  }
}

class Text_Appoint extends StatelessWidget {
  const Text_Appoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 25, 0, 20),
      child: Container(
        color: Colors.white,
        height: 24,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "New Appointment",
            style: TextStyle(
              //fontFamily: 'Mitr',
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ),
    );
  }
}

class Data_test extends StatelessWidget {
  const Data_test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Logo(),
              title: Text(
                'Mr.Parin Mahahear',
                style: TextStyle(
                  fontFamily: 'Mitr',
                  color: Color(0xdd000000),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                ),
              ),
              subtitle: Text(
                ' \nClinic\nDr.Tong Hongthong\n6 june 21|12.00-12.30\n',
                style: TextStyle(
                  fontFamily: 'Mitr',
                  color: Color(0xdd000000),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                ),
              ),
            ),
            // Padding(
            //     padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            //     child:
            //),
            Card(
              elevation: 0.0,
              //color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Breject(),
                  Baccept(),
                ],
              ),
            ),

            SizedBox(
              height: 12,
            )
          ],
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 56,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/parin.jpg"),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
    );
  }
}

class Breject extends StatefulWidget {
  Breject({Key? key}) : super(key: key);

  @override
  _BrejectState createState() => _BrejectState();
}

class _BrejectState extends State<Breject> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 36,
      // width: 129,

      child: Expanded(
        child: FloatingActionButton.extended(
          label: Text(
            "REJECT",
            style: TextStyle(
              fontFamily: 'Mitr',
              color: Color(0xdd000000),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              letterSpacing: 0,
            ),
          ),
          onPressed: () {/* ... */},
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}

class Baccept extends StatefulWidget {
  Baccept({Key? key}) : super(key: key);

  @override
  _BacceptState createState() => _BacceptState();
}

class _BacceptState extends State<Baccept> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 36,
      // width: 129,
      child: Expanded(
        child: FloatingActionButton.extended(
          label: Text("ACCEPT"),
          onPressed: () {},
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
