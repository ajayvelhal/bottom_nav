import 'package:flutter/material.dart';
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

class HomeState extends State<HomePage> {

  int currentStep=0;
  List<Step> _steps = [
    new Step(
        title: Text("OrderPlaced"),
        content: Text("Order Placed Successfully"),
        isActive: true),
    new Step(
        title: Text("Product Shipped"),
        content: Text("Product Shipped Successfully Successfully"),
        isActive: true),
    new Step(
        title: Text("Product Out for Delivery"),
        content: Text("Product will be delivered today"),
        isActive: true),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Stepper")),
      ),
      body: new Container(
        child: new Stepper(steps: _steps,
        currentStep: currentStep,
        type: StepperType.vertical,),
      ),
    );
  }
}
