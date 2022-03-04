import 'package:counter/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => count++);
      },
      onDoubleTap: () {
        if(count > 0) {
          setState(() => count--);
        }
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
          onPressed: () {
            setState(() {
              count = 0;
            });
          },
          child: const Icon(Icons.restore),
        ),
      ),
    );
  }
}
