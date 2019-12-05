import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'User_DataType.dart';

class CountData with ChangeNotifier {
  int currentCounter = 0;
  List<int> listOfCounters = new List<int>();
  User_DataType  _user_dataType;

  void addCounter() {
    listOfCounters.add(currentCounter);
    notifyListeners();
  }

  void setLatestValue(newValue) {
    currentCounter = newValue;
  }
  void setuser( User_DataType  user_dataType){
    this._user_dataType =user_dataType;

  }
  User_DataType get User_Data=>_user_dataType;
}