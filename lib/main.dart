import 'package:counter_app_iw/counter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterProvider(counter: Counter(), child: HomePage()),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ValueKey<int> _key = ValueKey(0);

  @override
  Widget build(BuildContext context) {
    final counter = CounterProvider.of(context).counter;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counter.increment();
          setState(() {
            _key = ValueKey(counter.value);
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        key: _key,
        child: Text("${counter.value}"),
      ),
    );
  }
}
