import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const _size = 25.0;
const _bgColor = Colors.blue;
const _borderColor = Colors.black;
const _borderWidth = 2.0;
const _borderRadius = 12.5;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: _drawSeven(),
      ),
    );
  }

  List<Widget> _drawSeven() {
    return [
      _buildLineFirst(),
      _buildLineSecondAndThird(),
      _buildLineSecondAndThird(),
      _buildLineFourth(),
      _buildLineFifth(),
      _buildLineSixth(),
    ];
  }

  Widget _buildLineFirst() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDot(),
        _buildDot(),
        _buildDot(),
        _buildDot(),
      ],
    );
  }

  Widget _buildLineFourth() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildEmpty(),
        _buildEmpty(),
        _buildDot(),
        _buildEmpty(),
      ],
    );
  }
  Widget _buildLineFifth() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildEmpty(),
        _buildDot(),
        _buildEmpty(),
        _buildEmpty(),
      ],
    );
  }
  Widget _buildLineSixth() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDot(),
        _buildEmpty(),
        _buildEmpty(),
        _buildEmpty(),
      ],
    );
  }

  Widget _buildLineSecondAndThird() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildEmpty(),
        _buildEmpty(),
        _buildEmpty(),
        _buildDot(),
      ],
    );
  }

  Widget _buildDot() {
    return Container(
      width: _size,
      height: _size,
      decoration: BoxDecoration(
        color: _bgColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(_borderRadius),
        ),
        border: Border.all(
          color: _borderColor,
          width: _borderWidth,
        ),
      ),
    );
  }

  Widget _buildEmpty() {
    return const SizedBox(
      width: _size,
      height: _size,
    );
  }
}
