import 'package:flutter/material.dart';
import 'package:my_flutter_project/Assistants/assisstantMethods.dart';
import 'package:my_flutter_project/Models/history.dart';

class HistoryItem extends StatelessWidget
{
  final History history;
  HistoryItem({this.history});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                child: Row(
                  children: <Widget>[
                    Image.asset('images/pickicon.png', height: 16, width: 16,),
                    SizedBox(width: 18,),
                    Expanded(child: Container(child: Text(history.pickUp, overflow: TextOverflow.ellipsis, style: TextStyle(),))),
                    SizedBox(width: 5,),
                    Text('\u{20B9}${history.fares}', style: TextStyle(fontFamily: 'Brand Bold', fontSize: 16, color: Colors.black87),),
                  ],
                ),
              ),

              SizedBox(height: 8.0,),

              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Image.asset('images/destination.png', height: 16, width: 16,),
                  SizedBox(width: 18,),

                  Text(history.dropOff, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18),),
                ],
              ),
              
              SizedBox(height: 15,),
              
              Text(AssistantMethods.formatTripDate(history.createdAt), style: TextStyle(color: Colors.grey),),
            ],
          ),
        ],
      ),
    );
  }
}