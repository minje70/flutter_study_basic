import 'package:flutter/material.dart';
import 'package:flutter_study_basic/shoppingList.dart';

class Profile {
  Profile({required this.name, required this.subtitle});
  final name;
  final subtitle;
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Study',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Rapid Flutter Study'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;
  final List<Profile> profiles = [
    Profile(name: 'mijeong', subtitle: '42seoul에서 사용한 이름입니다.'),
    Profile(name: 'minjae', subtitle: '리얼 이름입니다.')
  ];

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () => print('hihi'), icon: Icon(Icons.menu)),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many',
            ),
            Text(
              'hi',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            GestureDetector(
              onTap: () => print('Tap!'),
              onDoubleTap: () => print('Double Tap!'),
              onLongPress: () => print('Long Press!'),
              child: Container(
                margin: EdgeInsets.only(left: 8, right: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.amber),
                height: 50,
                child: const Center(child: Text('Button')),
              ),
            ),
            Container(
              height: 8,
            ),
            Center(
              child: Counter(),
            ),
            Expanded(
              child: ShoppingList(profiles: widget.profiles),
            )
          ],
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$_counter 번 눌림'),
        SizedBox(width: 16),
        ElevatedButton(
          onPressed: _increment,
          child: Icon(Icons.plus_one),
        ),
      ],
    );
  }
}
