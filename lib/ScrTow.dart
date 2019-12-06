import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Block.dart';
import 'User_DataType.dart';
import 'countData.dart';

class ScrTow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String vv;
    return Scaffold(
      body: Column(
        children: <Widget>[
          RaisedButton(onPressed: () {
            User_DataType user = User_DataType(
                age: 22,
                details: 'vv',
                kind: "man  $vv",
                uid: '999   $vv',
                name: 'my nameeeee   $vv e',
                imagURL:
                    "https://images.freeimages.com/images/large-previews/09d/pink-roses-1169804.jpg");

            dataBlock.feedData(user);
          }),
          TextField(
            onChanged: (v) {
              vv = v;
            },
          ),
          StreamBuilder(
              stream: dataBlock.stramdata,
              builder: (context, snapshot) {
                User_DataType y;
                if(snapshot.hasData){
                 y=snapshot.data as User_DataType;
                  print(y.name);

}
                return snapshot.hasData

                    ? Column(children: <Widget>[Text( y.name ),Text( y.uid ),Text( y.age.toString() ),Text( y.details )],)
                    : Text('ooooooooooo');
              })
        ],
      ),
    );
  }
}

//Consumer<CountData>(builder: (context, countDataLink, _) {
//return Scaffold(
//body: Card(
//child: Column(
//children: <Widget>[
//Text(
//countDataLink.User_Data.age.toString(),
//), Text(
//countDataLink.User_Data.kind.toString(),
//), Text(
//countDataLink.User_Data.uid.toString(),
//), Text(
//countDataLink.User_Data.name.toString(),
//),
//],
//),
//),
//);
//});
