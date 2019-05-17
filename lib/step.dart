import 'package:flutter/material.dart';

void main()=> runApp(MyStep());

class MyStep extends StatelessWidget {

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
      body: new Container(
        child: new Stepper(steps: _steps,
          currentStep: currentStep,
          type: StepperType.vertical,),
      ),
    );
  }
}