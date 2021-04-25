import 'package:flutter/material.dart';
import 'package:my_flutter_project/AllScreens/mainscreen.dart';
import 'package:my_flutter_project/classes/language.dart';
import 'package:my_flutter_project/localization/language_constants.dart';
import 'package:my_flutter_project/main.dart';


class LanguageScreen extends StatefulWidget
{
  static const String idScreen = "language";
  LanguageScreen({Key key}) : super(key: key);

  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  void _changeLanguage(Language language) async {
    Locale _locale = await setLocale(language.languageCode);
    MyApp.setLocale(context, _locale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getTranslated(context, 'app_language')), //App Language
      ),

      backgroundColor: Colors.white,
      body: ListView(
        children: [

          //car icon
          Container(
            child: Center(
                child: DropdownButton<Language>(
                  iconSize: 30,
                  hint: Text(getTranslated(context, 'change_language')),
                  onChanged: (Language language) {
                    _changeLanguage(language);
                  },
                  items: Language.languageList()
                      .map<DropdownMenuItem<Language>>(
                        (e) => DropdownMenuItem<Language>(
                      value: e,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            e.flag,
                            style: TextStyle(fontSize: 30),
                          ),
                          Text(e.name)
                        ],
                      ),
                    ),
                  )
                      .toList(),
                )),
          ),

          SizedBox(height: 40,),

          FlatButton(
            onPressed: ()
            {
              Navigator.pushNamedAndRemoveUntil(context, MainScreen.idScreen, (route) => false);
            },
            child: const Text(
              'Go Back',
              //getTranslated(context, 'go_back')
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
