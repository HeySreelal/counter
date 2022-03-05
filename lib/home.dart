import 'package:counter/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;

  void reset() => setState(() => count = 0);
  void increment() => setState(() => count++);
  void decrement() => setState(() {
        if (count > 0) {
          count--;
        } else {
          showMsg("Excuse me, let's count to positive.");
        }
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => increment(),
      onDoubleTap: () => decrement(),
      child: RawKeyboardListener(
        focusNode: FocusNode(),
        autofocus: true,
        onKey: (value) {
          // If SPACE or UP Arrow Key is pressed, increment the counter.
          if (value.isKeyPressed(LogicalKeyboardKey.space) ||
              value.isKeyPressed(LogicalKeyboardKey.arrowUp)) increment();

          // If DOWN Arrow Key is pressed, decrement the counter.
          if (value.isKeyPressed(LogicalKeyboardKey.arrowDown)) decrement();

          // if Delete or Backspace Key is pressed, reset the counter.
          if (value.isKeyPressed(LogicalKeyboardKey.delete) ||
              value.isKeyPressed(LogicalKeyboardKey.backspace)) reset();
        },
        child: Scaffold(
          body: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: TaylorsTheme.randomGradient(),
                ),
              ),
              Positioned(
                child: Center(
                  child: Text(
                    '$count',
                    style: GoogleFonts.lobster(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 100,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => reset(),
            child: const Icon(Icons.restore),
          ),
        ),
      ),
    );
  }
}

void showMsg(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    timeInSecForIosWeb: 3,
  );
}
