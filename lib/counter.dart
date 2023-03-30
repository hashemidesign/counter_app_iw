import 'package:flutter/cupertino.dart';

class Counter {
  int _value;

  Counter() : _value = 0;

  int get value => _value;

  void increment() {
    _value++;
  }
}

class CounterProvider extends InheritedWidget {
  final Counter counter;

  const CounterProvider({
    Key? key,
    required Widget child,
    required this.counter,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant CounterProvider oldWidget) {
    return counter.value != oldWidget.counter.value;
  }

  static CounterProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>()!;
  }
}
