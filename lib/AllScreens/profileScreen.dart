import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_geofire/flutter_geofire.dart';
import 'package:my_flutter_project/congifMaps.dart';

import 'mainscreen.dart';


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(userCurrentInfo.name,
              style: TextStyle(
                fontSize: 65.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "Brand Bold",
              ),
            ),

            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.white,
              ),
            ),

            SizedBox(height: 40.0,),

            InfoCard(
              text: userCurrentInfo.phone,
              icon: Icons.phone,
              onPressed: () async
              {
                print("This is Phone.");
              },
            ),

            InfoCard(
              text: userCurrentInfo.email,
              icon: Icons.email,
              onPressed: () async
              {
                print("This is Email.");
              },
            ),

            FlatButton(
              onPressed: ()
              {
                Navigator.pushNamedAndRemoveUntil(context, MainScreen.idScreen, (route) => false);
              },
              child: const Text(
                'Go Back',
                style: TextStyle(
                    fontSize: 18, color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget
{
  final String text;
  final IconData icon;
  Function onPressed;

  InfoCard({this.text, this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: ListTile(
          leading: Icon(icon, color: Colors.black87,),
          title: Text(
            text,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 16.0,
              fontFamily: "Brand Bold"
            ),
          ),
        ),
      ),
    );
  }
}

