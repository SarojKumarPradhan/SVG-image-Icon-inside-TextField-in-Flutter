import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('SVG images inside the TextField'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Your Name',
                  border: OutlineInputBorder(),
                  //*********************************************************
                  prefixIconConstraints:
                      BoxConstraints(minHeight: 25, minWidth: 45),
                  prefixIcon:
                      SvgPicture.asset('images/man.svg', height: 0, width: 0),
                  //*********************************************************
                  suffixIconConstraints:
                      BoxConstraints(minHeight: 20, minWidth: 45),
                  suffixIcon:
                      SvgPicture.asset('images/view.svg', height: 0, width: 0),
                  //*********************************************************
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Your Password',
                  border: OutlineInputBorder(),
                  //*********************************************************
                  prefixIconConstraints:
                      BoxConstraints(minHeight: 25, minWidth: 45),
                  prefixIcon: SvgPicture.asset('images/padlock.svg',
                      height: 0, width: 0),
                  //*********************************************************
                  suffixIconConstraints:
                      BoxConstraints(minHeight: 20, minWidth: 45),
                  suffixIcon:
                      SvgPicture.asset('images/view.svg', height: 0, width: 0),
                  //*********************************************************
                ),
              ),
            ),
            SizedBox(height: 50),
            Text('Icons inside the TextField'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Your Name',
                  border: OutlineInputBorder(),
                  //*********************************************************
                  prefixIcon: Icon(Icons.person),
                  //*********************************************************
                  suffixIcon: Icon(Icons.remove_red_eye),
                  //*********************************************************
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Your Password',
                  border: OutlineInputBorder(),
                  //*********************************************************
                  prefixIcon: Icon(Icons.lock),
                  //*********************************************************
                  suffixIcon: Icon(Icons.remove_red_eye),
                  //*********************************************************
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
