import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(
                primaryColor: Colors.black,
              ),
              child: Stepper(
                steps: [
                  Step(
                    title: Text('Login'),
                    subtitle: Text('Login first'),
                    content: Text('asddddddddddddddddddd'),
                    isActive: true,
                  ),
                  Step(
                    title: Text('LLogin'),
                    subtitle: Text('Login first'),
                    content: Text('asddddddddddddddddddd'),
                    isActive: false,
                  ),
                  Step(
                    title: Text('LLogin'),
                    subtitle: Text('Login first'),
                    content: Text('asddddddddddddddddddd'),
                    isActive: false,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
