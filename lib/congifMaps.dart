import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_flutter_project/Models/allUsers.dart';

String mapKey = "AIzaSyCMP2_zI0MY984ob8WeZeXGR8Mm1UUTYfY";

User firebaseUser;

Users userCurrentInfo;

int driverRequestTimeOut = 30;

String statusRide = "";

String rideStatus = "Driver is coming..";

String carDetailsOfDriver = "";

String driverName = "";
String driverPhone = "";

double starCounter = 0.0;
String title = "";

String carRideType = "";

String serverToken = "key=AAAAyFFZ9MI:APA91bHeDK73SI_zDXNAqAHbfANZ0bLJXsxg9nzwCCmMuBYMPVzCrwb_0XjYH4eYAbhCkp9glyi1hfA6IK04NFthwB7-_pcNIaP2jVmiCxZY4tHk-KDuSNsozQPwvbpVhVWuabHW5fC7";