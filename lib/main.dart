import 'package:flutter/material.dart';
import './examples/expansionTile.dart';
import './examples/tabBar.dart';
import './examples/basic_appbar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      showPerformanceOverlay: false,
      home: new HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("examples"),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            title: new Text("Tabbar Example"),
            onTap: () {
              // 导航
              print("导航...");
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => new TabbedAppBarSample()),
              );
            },
          ),
          new Divider(),
          new ListTile(
            title: new Text("ExpansionTile Example"),
            onTap: () {
              // 导航
              print("导航...");
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => new ExpansionTileSample()),
              );
            },
          ),
          new Divider(),
          new ListTile(
            title: new Text("BasicAppbar Example"),
            onTap: () {
              // 导航
              print("导航...");
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => new BasicAppBarSample()),
              );
            },
          ),
        ],
      ),
    );
  }
}
