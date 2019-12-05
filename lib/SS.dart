

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'countData.dart';

class mee extends StatefulWidget {
  @override
  _meeState createState() => _meeState();
}

class _meeState extends State<mee> {
  @override
  Widget build(BuildContext context) {
    return   Consumer<CountData>(builder: (context, countDataLink, _){
      return Scaffold(body: Center(child: Column(
        children: <Widget>[SizedBox(height: 200,),
          Text(
              'Last Counter Set: ${countDataLink.currentCounter.toString()}'),
          new Expanded(
              child: ListView.builder(
                itemCount:
                countDataLink.listOfCounters.length,
                itemBuilder:
                    (BuildContext ctxt, int index) {
                  return Text(
                      ' Set $index: ${countDataLink.listOfCounters[index].toString()}');
                },
              ))
        ],
      ),),) ;

    }
    ) ; }
}
