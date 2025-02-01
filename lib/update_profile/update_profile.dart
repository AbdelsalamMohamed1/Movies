import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:movies/app%20utils/app_colors.dart';
import 'package:movies/app%20utils/app_textStyle.dart';

class UpdateProfile extends StatefulWidget {
  static const String routeName = 'updateProfile';

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  String selectedAvatar = 'assets/images/avatar_8.png';

  // List of  avatars
  final List<String> avatars = [
    'assets/images/avatar_1.png',
    'assets/images/avatar_2.png',
    'assets/images/avatar_3.png',
    'assets/images/avatar_4.png',
    'assets/images/avatar_5.png',
    'assets/images/avatar_6.png',
    'assets/images/avatar_7.png',
    'assets/images/avatar_8.png',
    'assets/images/avatar_9.png',
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.pick_avatar,
          style: AppTextStyle.semiBold20Yellow,
        ),
        centerTitle: true,
        backgroundColor: AppColors.black,
        iconTheme: IconThemeData(color: AppColors.yellow),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  showAvatarSheet(context);
                },
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(selectedAvatar),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Image.asset('assets/images/name_icon.png'),
                  filled: true,
                  fillColor: AppColors.darkGray,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Image.asset('assets/images/phone_icon.png'),
                  filled: true,
                  fillColor: AppColors.darkGray,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                AppLocalizations.of(context)!.reset_password,
                style: AppTextStyle.regular20White,
              ),
            ),
            SizedBox(
              height: height * 0.25,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.red,
                        padding: EdgeInsets.symmetric(
                            vertical: height * 0.02, horizontal: width * 0.1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Text(
                      AppLocalizations.of(context)!.delete_account,
                      style: AppTextStyle.regular20White,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.yellow,
                        padding: EdgeInsets.symmetric(
                            vertical: height * 0.02, horizontal: width * 0.1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Text(
                        AppLocalizations.of(context)!.update_data,
                        style: AppTextStyle.regular20Black),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }

  void showAvatarSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.darkGray,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Wrap(
            children: [
              SizedBox(height: 15),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: avatars.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedAvatar = avatars[index];
                        });
                        Navigator.pop(context);
                      },
                      child:  Container(

                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.yellow, width: 2),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(

                            avatars[index],
                            fit: BoxFit.cover, // Ensures the image fills the square
                          ),
                        ),
                      )
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
