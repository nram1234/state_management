import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'countData.dart';

class ScrTow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CountData>(builder: (context, countDataLink, _) {
      return Scaffold(
        body: Card(
          child: Column(
            children: <Widget>[
              Text(
                countDataLink.User_Data.age.toString(),
              ), Text(
                countDataLink.User_Data.kind.toString(),
              ), Text(
                countDataLink.User_Data.uid.toString(),
              ), Text(
                countDataLink.User_Data.name.toString(),
              ),
            ],
          ),
        ),
      );
    });
  }
}
