import 'package:flutter/material.dart';
import 'package:movies/app%20utils/app_colors.dart';
import 'package:movies/app%20utils/app_textStyle.dart';
import 'package:movies/custom%20widgets/custom_elevated_button.dart';
import 'package:movies/home%20screen/home_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});
  static const String routeName = 'OnBoardingScreen';

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  int? index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.transparent,
        body: PageView(
          controller: _controller,
          children: [
            buildPageViewModel(
              currentIndex: 0,
              containerColor: AppColors.transparent,
              title: 'Find Your Next Favorite Movie Here Movies',
              body:
                  'Get access to a huge library of movies to suit all tastes. You will surely like it.',
              titleTextStyle: AppTextstyle.bold24White,
              bodyTextStyle: AppTextstyle.regular20White60,
              assetName: 'assets/images/Movies Posters.png',
              pageColor: AppColors.grayBlue,
            ),
            buildPageViewModel(
              currentIndex: 1,
              containerColor: AppColors.black,
              title: 'Discover Movies',
              body:
                  'Explore a vast collection of movies in all qualities and genres. Find your next favorite film with ease.',
              titleTextStyle: AppTextstyle.bold24White,
              bodyTextStyle: AppTextstyle.regular20White,
              assetName: 'assets/images/board_1.png',
              pageColor: AppColors.grayBlue,
            ),
            buildPageViewModel(
              currentIndex: 2,
              containerColor: AppColors.black,
              title: 'Explore All Genres',
              body:
                  'Discover movies from every genre, in all available qualities. Find something new and exciting to watch every day.',
              titleTextStyle: AppTextstyle.bold24White,
              bodyTextStyle: AppTextstyle.regular20White,
              assetName: 'assets/images/board_2.png',
              pageColor: AppColors.orange,
            ),
            buildPageViewModel(
              currentIndex: 3,
              containerColor: AppColors.black,
              title: 'Create Watchlists',
              body:
                  'Save movies to your watchlist to keep track of what you want to watch next. Enjoy films in various qualities and genres.',
              titleTextStyle: AppTextstyle.bold24White,
              bodyTextStyle: AppTextstyle.regular20White,
              assetName: 'assets/images/board_3.png',
              pageColor: AppColors.purple,
            ),
            buildPageViewModel(
              currentIndex: 4,
              containerColor: AppColors.black,
              title: 'Rate, Review, and Learn',
              body:
                  'Share your thoughts on the movies you\'ve watched. Dive deep into film details and help others discover great movies with your reviews.',
              titleTextStyle: AppTextstyle.bold24White,
              bodyTextStyle: AppTextstyle.regular20White,
              assetName: 'assets/images/board_4.png',
              pageColor: AppColors.scarlet,
            ),
            buildPageViewModel(
              currentIndex: 5,
              containerColor: AppColors.black,
              title: 'Start Watching Now',
              body: '',
              titleTextStyle: AppTextstyle.bold24White,
              bodyTextStyle: AppTextstyle.regular20White,
              assetName: 'assets/images/board_5.png',
              pageColor: AppColors.gray2,
            )
          ],
        ));
  }

  void onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => HomeScreen()),
    );
  }

  onNext(context) {}

  buildPageViewModel(
      {String title = '',
      String body = '',
      String assetName = '',
      TextStyle? titleTextStyle,
      TextStyle? bodyTextStyle,
      Color? containerColor,
      Color pageColor = AppColors.transparent,
      int currentIndex = 0}) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(assetName),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover),
              color: pageColor),
        ),
        Column(
          children: [
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
              decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              alignment: Alignment.bottomCenter,
              child: Column(children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: body.isEmpty ? 0 : 10,
                ),
                Text(
                  body,
                  textAlign: TextAlign.center,
                  style: bodyTextStyle,
                ),
                SizedBox(
                  height: body.isEmpty ? 0 : 10,
                ),
                currentIndex == 5
                    ? CustomElevatedButton(
                        onClick: () {
                          Navigator.of(context)
                              .pushReplacementNamed(HomeScreen.routeName);
                        },
                        text: 'Finish',
                        center: true,
                        backgroundColor: AppColors.yellow,
                        borderColor: AppColors.yellow,
                        textStyle: AppTextstyle.semiBold20Black,
                      )
                    : CustomElevatedButton(
                        onClick: () {
                          _controller.animateToPage(currentIndex + 1,
                              duration: Duration(milliseconds: 250),
                              curve: Curves.linear);
                        },
                        text: currentIndex == 0 ? 'Explore Now' : 'Next',
                        center: true,
                        backgroundColor: AppColors.yellow,
                        borderColor: AppColors.yellow,
                        textStyle: AppTextstyle.semiBold20Black,
                      ),
                SizedBox(
                  height: 10,
                ),
                (currentIndex == 0 || currentIndex == 1)
                    ? SizedBox(
                        height: 0,
                      )
                    : CustomElevatedButton(
                        onClick: () {
                          _controller.animateToPage(currentIndex - 1,
                              duration: Duration(milliseconds: 250),
                              curve: Curves.linear);
                        },
                        text: 'Back',
                        center: true,
                        backgroundColor: AppColors.transparent,
                        borderColor: AppColors.yellow,
                        textStyle: AppTextstyle.semiBold20Yellow,
                      )
              ]),
            ),
          ],
        )
      ],
    );
  }
}
