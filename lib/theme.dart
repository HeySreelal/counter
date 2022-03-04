import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaylorsTheme {
  static Color white = Colors.white;
  static Color black = Colors.black;

  static Color clearDay = const Color(0xFFDFFFF2);
  static Color snuff = const Color(0xFFFDD4F5);
  static Color quarts = const Color(0xFFDED2FF);
  static Color cosmos = const Color(0xFFFFD6D6);
  static Color whisper = const Color(0xFFEAEAEA);
  static Color lightYellow = const Color(0xFFFEFFDE);

  static Gradient get cosmosToWhisper => gradient(cosmos, whisper);

  static Gradient get clearSnuff => gradient(clearDay, whisper);
  static Gradient get clearSquarts => gradient(clearDay, quarts);
  static Gradient get clearCosmos => gradient(clearDay, cosmos);
  static Gradient get clearWhisper => gradient(clearDay, whisper);
  static Gradient get clearYellow => gradient(clearDay, lightYellow);

  static Gradient get snuffClear => gradient(snuff, clearDay);
  static Gradient get snuffQuarts => gradient(snuff, quarts);
  static Gradient get snuffCosmos => gradient(snuff, cosmos);
  static Gradient get snuffWhisper => gradient(snuff, whisper);
  static Gradient get snuffYellow => gradient(snuff, lightYellow);

  static Gradient get quartsClear => gradient(quarts, clearDay);
  static Gradient get quartsSnuff => gradient(quarts, snuff);
  static Gradient get quartsCosmos => gradient(quarts, cosmos);
  static Gradient get quartsWhisper => gradient(quarts, whisper);
  static Gradient get quartsYellow => gradient(quarts, lightYellow);

  static Gradient get cosmosClear => gradient(cosmos, clearDay);
  static Gradient get cosmosSnuff => gradient(cosmos, snuff);
  static Gradient get cosmosQuarts => gradient(cosmos, quarts);
  static Gradient get cosmosWhisper => gradient(cosmos, whisper);
  static Gradient get cosmosYellow => gradient(cosmos, lightYellow);

  static Gradient get whisperClear => gradient(whisper, clearDay);
  static Gradient get whisperSnuff => gradient(whisper, snuff);
  static Gradient get whisperQuarts => gradient(whisper, quarts);
  static Gradient get whisperCosmos => gradient(whisper, cosmos);
  static Gradient get whisperYellow => gradient(whisper, lightYellow);

  static Gradient get yellowClear => gradient(lightYellow, clearDay);
  static Gradient get yellowSnuff => gradient(lightYellow, snuff);
  static Gradient get yellowQuarts => gradient(lightYellow, quarts);
  static Gradient get yellowCosmos => gradient(lightYellow, cosmos);
  static Gradient get yellowWhisper => gradient(lightYellow, whisper);

  static List<Gradient> get gradients => [
        cosmosToWhisper,
        clearSnuff,
        clearSquarts,
        clearCosmos,
        clearWhisper,
        clearYellow,
        snuffClear,
        snuffQuarts,
        snuffCosmos,
        snuffWhisper,
        snuffYellow,
        quartsClear,
        quartsSnuff,
        quartsCosmos,
        quartsWhisper,
        quartsYellow,
        cosmosClear,
        cosmosSnuff,
        cosmosQuarts,
        cosmosWhisper,
        cosmosYellow,
        whisperClear,
        whisperSnuff,
        whisperQuarts,
        whisperCosmos,
        whisperYellow,
        yellowClear,
        yellowSnuff,
        yellowQuarts,
        yellowCosmos,
        yellowWhisper
      ];

  static randomGradient() {
    return gradients[Random().nextInt(gradients.length)];
  }

  static ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: white,
    primaryColor: Colors.white,
    fontFamily: 'Montserrat',
    primaryTextTheme: GoogleFonts.poppinsTextTheme(),
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
    colorScheme: ColorScheme.light(
      secondary: quarts,
    ),
  );

}
