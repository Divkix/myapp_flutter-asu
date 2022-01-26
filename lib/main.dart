import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Cross-Platform App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'My Cross-Platform App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // function which increases the counter by 1
  void _incrementCounter() {
    setState(
      () {
        _counter++;
      },
    );
  }

  // function which decreases the counter by 1
  void _decrementCounter() {
    setState(
      () {
        _counter--;
      },
    );
  }

  // function which resets the counter to zero
  void _resetCounter() {
    setState(
      () {
        _counter = 0;
      },
    );
  }

  // Snackbar to show when button is long pressed
  _showSnackBar(int type) {
    var snackbarMsg = '';
    switch (type) {
      case 1:
        snackbarMsg = "Just click once to increment the counter by 1.";
        break;
      case -1:
        snackbarMsg = "Just click once to decrease the counter by 1.";
        break;
      case 0:
        snackbarMsg = "Just click once to make the counter zero.";
        break;
    }
    final snackBar = SnackBar(
      content: Text(snackbarMsg),
      duration: const Duration(seconds: 1),
    );
    // show the snackbar
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Column(
              children: [
                MaterialButton(
                  onPressed: _incrementCounter,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: const Text('Increment Counter'),
                  minWidth: 150.00,
                  color: Colors.green,
                  hoverColor: Colors.greenAccent,
                  onLongPress: _showSnackBar(1),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                ),
                MaterialButton(
                  onPressed: _decrementCounter,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: const Text('Decrement Counter'),
                  minWidth: 150.0,
                  color: Colors.red,
                  hoverColor: Colors.redAccent,
                  onLongPress: _showSnackBar(-1),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                ),
                MaterialButton(
                  onPressed: _resetCounter,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: const Text('Reset Counter'),
                  minWidth: 150.0,
                  color: Colors.blue,
                  hoverColor: Colors.blueAccent,
                  onLongPress: _showSnackBar(0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
