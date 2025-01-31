import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';

class CustomAvatarSlider extends StatelessWidget {
  const CustomAvatarSlider({super.key});

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return CarouselSlider.builder(
      options: CarouselOptions(
          height: screen.height * .2,
          enableInfiniteScroll: true,
          viewportFraction: .3,
          animateToClosest: true,
          enlargeCenterPage: true,
          enlargeFactor: .5),
      itemCount: UserModel.avatars.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Image(
        image: UserModel.avatars[itemIndex],
            fit: BoxFit.contain,
      ),
    );
  }
}
