import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier{

  bool isRightDoorLock = true;
  bool isLeftDoorLock = true;
  bool isTopDoorLock = true;
  bool isBottomDoorLock = true;
  void updateRightDoorLock(){
    isRightDoorLock = ! isRightDoorLock;
    notifyListeners();
    //if you user provider
  }
  void updateLeftDoorLock(){
    isLeftDoorLock = ! isLeftDoorLock;
    notifyListeners();
    //if you user provider
  }



  void updateTopDoorLock(){
    isTopDoorLock = ! isTopDoorLock;
    notifyListeners();
    //if you user provider
  }
  void updateBottomDoorLock(){
    isBottomDoorLock = ! isBottomDoorLock;
    notifyListeners();
    //if you user provider
  }
}