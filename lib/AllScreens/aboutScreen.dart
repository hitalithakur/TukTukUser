import 'package:flutter/material.dart';
import 'package:my_flutter_project/AllScreens/mainscreen.dart';

class AboutScreen extends StatefulWidget
{
  static const String idScreen = "about";

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [

          //car icon
          Container(
            height: 220,
            child: Center(
              child: Image.asset('images/rickshaw.png'),
            ),
          ),


          // app name + info
          Padding(
            padding: EdgeInsets.only(top: 30, left: 24, right: 24),
            child: Column(
              children: [
                Text(
                  'TukTuk',
                  style: TextStyle(
                    fontSize: 90, fontFamily: 'Brand Bold'),
                ),

                SizedBox(height: 30,),

                Text(
                  'This app is developed by Gaurang, Hitali & Sheetal.',
                  style: TextStyle(fontFamily: 'Brand Bold'),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          SizedBox(height: 40,),

          FlatButton(
            onPressed: ()
            {
              Navigator.pushNamedAndRemoveUntil(context, MainScreen.idScreen, (route) => false);
            },
            child: const Text(
              'Go Back',
              style: TextStyle(
                  fontSize: 18, color: Colors.black),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0)
            ),
          ),
        ],
      ),
    );
  }
}
