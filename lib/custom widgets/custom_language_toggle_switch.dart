import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../app utils/app_colors.dart';

class CustomLanguageToggleSwitch extends StatefulWidget {
  @override
  State<CustomLanguageToggleSwitch> createState() =>
      _CustomLanguageToggleSwitchState();
}
class _CustomLanguageToggleSwitchState
    extends State<CustomLanguageToggleSwitch> {
  int selectedIndex = 0;

  @override

  Widget build(BuildContext context) {
  var screen=MediaQuery.of(context).size;
    return Center(
      child: ToggleSwitch(
        minWidth: screen.width*(48/430),
        cornerRadius: 30.0,
        activeBgColors: [
          [AppColors.yellow],
          [AppColors.yellow]
        ],
        activeFgColor: AppColors.black,
        inactiveBgColor: AppColors.black,
        inactiveFgColor: AppColors.black,
        initialLabelIndex: 1,
        totalSwitches: 2,
        borderWidth: 2.0,
        borderColor: [AppColors.yellow],
        labels: ['True', 'False'],
        radiusStyle: true,
        onToggle: (index) {
          print('switched to: $index');
        },
        customWidgets: [
          CircleAvatar(

            child: Image.asset(
              "assets/images/ic_eng.png",
            ),
          ),
          CircleAvatar(
            child: Image.asset(
              "assets/images/ic_ar.png",
            ),
          ),
        ],
      ),
    );
  }
}
