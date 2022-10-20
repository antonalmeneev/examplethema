import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
//import 'package:flutter_switch/flutter_switch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();

}

class _LoginDemoState extends State<LoginDemo> {

  Color _buttonColor=Colors.red;
  Color _buttonColorT=Colors.blue;
  Color _buttonColorB=Colors.white;
  int p = 0;

  @override
  initState() {
    _buttonColor = Colors.red;
    _buttonColorT=Colors.blue;
    _buttonColorB=Colors.white;
    p = 0;
    super.initState();
  }


  /* void updateStile(index)
  {
    setState(() {
     indexStile =index;
    });

  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor:_buttonColor,
      ),
      backgroundColor: _buttonColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: ToggleSwitch(
                  activeBgColor: [Colors.green],
                  activeFgColor: _buttonColor,
                  inactiveBgColor: _buttonColorT,
                  inactiveFgColor: _buttonColorB,
                  dividerColor:Colors.amber ,
                  initialLabelIndex: p,
                  totalSwitches: 5,
                  labels: ['Red', 'Blue', 'Green','Black','White'],
                  onToggle: (index){
                    print('switched to: $index');
                    setState(() {
                      switch(index) {
                        case 0: {_buttonColor = Colors.red;
                        _buttonColorT=Colors.yellow;
                        _buttonColorB=Colors.green;
                        p=index!;
                        break;}
                        case 1: {_buttonColor = Colors.green;
                        _buttonColorT=Colors.red;
                        _buttonColorB=Colors.black;
                        p=index!;
                        break;}
                        case 2: {_buttonColor = Colors.yellow;
                        _buttonColorT=Colors.white;
                        _buttonColorB=Colors.red;
                        p=index!;
                        break;}
                        case 3: {_buttonColor = Colors.black;
                        _buttonColorT=Colors.green;
                        _buttonColorB=Colors.white;
                        p=index!;
                        break;}
                        case 4: {_buttonColor = Colors.white;
                        _buttonColorT=Colors.red;
                        _buttonColorB=Colors.yellow;
                        p=index!;
                        break;}
                      }});
                  }
                  ,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(width: 200, height: 150, child: FlutterLogo()),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('New User? Create Account')
          ],
        ),
      ),
    );
  }
}
