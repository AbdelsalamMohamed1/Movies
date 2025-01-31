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
        minWidth: screen.width*.15,
        initialLabelIndex: 1,
        cornerRadius: 30.0,
        activeBgColor: [Colors.transparent],
        inactiveBgColor: Colors.transparent,
        borderColor: [AppColors.yellow],
        borderWidth: 2,
        animate: true,

        customWidgets: [
          CircleAvatar(
              backgroundColor:
                  (selectedIndex == 0) ? AppColors.yellow : Colors.transparent,
              minRadius: 9,
              child: Image(
                image: AssetImage('assets/images/ic_eng.png'),
              )),
          CircleAvatar(
              backgroundColor:
                  (selectedIndex == 1) ? AppColors.yellow : Colors.transparent,
              minRadius: 9,
              child: Image(
                image: AssetImage('assets/images/ic_ar.png'),
              ))
        ],
        onToggle: (index) {
          selectedIndex = index!;
          print('switched to: $index');
          setState(() {});
        },
      ),
    );
  }
}
