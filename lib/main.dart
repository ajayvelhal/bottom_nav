import 'package:bottnav_stepper/step.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: new HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = new TabController(length: 2, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Navigation")),
      ),
      body: new TabBarView(
        children: <Widget>[new MyStep(), new Page("First Page")],
        controller: tabController,
      ),
      bottomNavigationBar: new Material(
        color: Colors.blue,
        child: new TabBar(
          controller: tabController,
          tabs: <Widget>[
            new Tab(
              icon: Icon(Icons.favorite),
            ),
            new Tab(
              icon: Icon(Icons.close),
            ),
          ],
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  String title;

  Page(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Center(child: Text(title)),
    );
  }
}
