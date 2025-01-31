import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies/custom%20widgets/custom_language_toggle_switch.dart';
import 'package:movies/models/user_model.dart';
import 'package:movies/register/register_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'homescreen';

  @override
  Widget build(BuildContext context) {
    return RegisterScreen();
  }
}
