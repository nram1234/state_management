import 'dart:async';

import 'package:state_management/event/Event.dart';
String name;
String myimg;
void doallyouwant(t) {



}
class DataBlockWithMathod{

  StreamController _controller=StreamController<Event>();
  Function (Event) get feedData=>_controller.sink.add;
  Stream<Event> get stramdata=>_controller.stream;

  DataBlockWithMathod( ){
stramdata.listen( doallyouwant);

  }

  dispose(){
    _controller?.close();

  }
}
DataBlockWithMathod dataBlock=DataBlockWithMathod();


// to call this mathod // dataBlock.feedData(TriggerSwitch())