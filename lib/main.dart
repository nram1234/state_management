import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'SS.dart';
import 'ScrTow.dart';
import 'User_DataType.dart';
import 'countData.dart';

void main() => runApp(
    ChangeNotifierProvider(builder: (context) => CountData(), child: MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    _counter++;
    Provider.of<CountData>(context, listen: false).setLatestValue(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CountData>(builder: (context, countDataLink, _) {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  onPressed: () {
                    countDataLink.addCounter();



                  },
                  child: Text('Save and Reset')),
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                countDataLink.currentCounter.toString(),
                style: Theme.of(context).textTheme.display1,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Scaffold(
                                appBar: AppBar(
                                  title: Text('Second Page'),
                                ),
                                body: Column(
                                  children: <Widget>[
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
                                ),
                              )));
                },
                child: Text('View All Counted Sets'),
              ),
              RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => mee()),
                    );
                  },
                  child: Text('77777')),
              RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ScrTow()),
                    );
                  },
                  child: Text('getuserdata')),
              RaisedButton(
                  onPressed: () {
                    User_DataType user = User_DataType(
                        age: _counter,
                        details: 'kljsdviopjasdiopasdsdo  $_counter',
                        kind: "man  $_counter",
                        uid: '999   $_counter',
                        name: 'my nameeeee   $_counter e',
                        imagURL:
                            "https://images.freeimages.com/images/large-previews/09d/pink-roses-1169804.jpg");
                    countDataLink.setuser(user);
                  },
                  child: Text('set user data')),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      );
    });
  }
}
