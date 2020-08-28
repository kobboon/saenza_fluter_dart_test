import 'package:flutter/material.dart';

void main() {
//  Test().testDart();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
          title: 'Flutter Demo Home Page',
          description: 'You have pushed the button this many times 44:'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
    this.title,
    this.description,
  }) : super(key: key);
  final String title;
  final String description;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
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
            Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.amber,
              child: Text('Hello'),
              margin: EdgeInsets.all(10.0),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                widget.description,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.cyanAccent
                ),
              ),
            ),
            Image.asset('assets/images/cat.png'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class Test {
  testDart() {
    var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

//  for (var object in flybyObjects) {
//    print(object);
//  }
//
//  for (int month = 1; month <= 12; month++) {
//    print(month);
//  }

    int one(int x) {
      return x * 2;
    }

    int two(int x) => one(one(x));

    int runTwice(int x, Function f) {
      x = f(x);
      return x;
    }

    print(runTwice(4, two));

    int fibonacci(int n) {
      if (n == 0 || n == 1) return n;
      return fibonacci(n - 1) + fibonacci(n - 2);
    }

    var result = fibonacci(20);
    print(result);

    String printString(int x) {
      return x.toString();
    }

    print(printString(5));

    bool isEven(int x) {
      if (x % 2 == 0) {
        return true;
      } else {
        return false;
      }
    }

    List<int> getEventNumber(Iterable<int> number) {
      var eventNumber = <int>[];
      for (var i in number) if (isEven(i)) eventNumber.add(i);
      return eventNumber;
    }

    var numbers = List.generate(10, (i) => i);
    print(getEventNumber(numbers));

    List hello(int x) {
      var listString = [];
      for (var index = 0; index < x; index++) {
        listString.add('Hello');
      }
      return listString;
    }

    print(hello(5));

    var name; //null

    String printName(String _name) {
      return 'hello :${name ?? 'Saenza'}';
    }

    print(printName(name));
  }
}
