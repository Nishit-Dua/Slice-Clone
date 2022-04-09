import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:good_project/util/string_extension.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(child: Text("Screen 1")),
    );
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView.builder(
          controller: PageController(viewportFraction: .8),
          scrollDirection: Axis.vertical,
          reverse: true,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                      .withOpacity(1.0),
                  child: Center(
                      child: Text(
                    index.toString(),
                    textScaleFactor: 10,
                  )),
                ),
                Align(
                  alignment: Alignment(.75, .75),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "🔥",
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        child: Center(
            child: MaterialButton(
          color: Colors.lime,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(_snackBar());
          },
          child: Text("Dont Click me"),
        )),
      ),
    );
  }

  SnackBar _snackBar() {
    return SnackBar(
      content: Text('I SAID DONT FUCKING CLICK ME!!!'.capitalize()),
      duration: const Duration(seconds: 1),
      backgroundColor: Colors.black54,
    );
  }
}

class TempBoi extends StatelessWidget {
  const TempBoi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.greenAccent,
        width: 100,
        height: 100,
        child: Text("hi?"),
      ),
    );
  }
}
