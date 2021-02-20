import 'package:flutter/cupertino.dart';
import 'package:my_flutter_project/Models/address.dart';
import 'package:my_flutter_project/Models/history.dart';

class AppData extends ChangeNotifier
{
  Address pickUpLocation, dropOffLocation;

  String earnings = "0";
  int countTrips = 0;
  List<String> tripHistoryKeys = [];
  List<History> tripHistoryDataList = [];

  void updatePickUpLocationAddress(Address pickUpAddress)
  {
    pickUpLocation = pickUpAddress;
    notifyListeners();
  }

  void updateDropOffLocationAddress(Address dropOffAddress)
  {
    dropOffLocation = dropOffAddress;
    notifyListeners();
  }

  void updateEarnings(String updatedEarnings)
  {
    earnings = updatedEarnings;
    notifyListeners();
  }

  void updateTripCounter(int tripCounter)
  {
    countTrips = tripCounter;
    notifyListeners();
  }

  void updateTripKeys(List<String> newKeys)
  {
    tripHistoryKeys = newKeys;
    notifyListeners();
  }

  void updateTripHistoryData(History eachHistory)
  {
    tripHistoryDataList.add(eachHistory);
    notifyListeners();
  }

}