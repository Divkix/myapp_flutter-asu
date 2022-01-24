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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  void _incrementCounter() {
    setState(
      () {
        _counter++;
      },
    );
  }

  void _decrementCounter() {
    setState(
      () {
        _counter--;
      },
    );
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
                  onLongPress: () {
                    const snackbar = SnackBar(
                      content: Text("Just click once to increase a number."),
                      duration: Duration(seconds: 1),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
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
                  onLongPress: () {
                    const snackbar = SnackBar(
                      content: Text("Just click once to decrease a number."),
                      duration: Duration(seconds: 1),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
