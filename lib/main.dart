import 'package:clock/clock.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyFancyWidget(),
    );
  }
}

class MyFancyWidget extends StatelessWidget {
  const MyFancyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          clock.now().year.toString(),
        ),
      ),
    );
  }
}
