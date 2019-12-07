import 'dart:async';


import 'User_DataType.dart';
class DataBlock{

StreamController _controller=StreamController<User_DataType>();
Function (User_DataType) get feedData=>_controller.sink.add;
Stream<User_DataType> get stramdata=>_controller.stream;

StreamController _controller2=StreamController<String>();
Function (String) get feedData2=>_controller2.sink.add;
Stream<String> get stramdata2=>_controller2.stream;
dispose(){
  _controller?.close();
  _controller2?.close();
}
}
DataBlock dataBlock=DataBlock();