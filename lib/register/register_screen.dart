import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:movies/custom%20widgets/custom_avatar_slider.dart';
import 'package:movies/custom%20widgets/custom_elevated_button.dart';
import 'package:movies/custom%20widgets/custom_language_toggle_switch.dart';
import 'package:movies/custom%20widgets/custom_text_form_field.dart';
import '../app utils/app_colors.dart';
import '../app utils/app_textStyle.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = 'register screen';

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        title: Text(
          AppLocalizations.of(context)!.register,
          style: AppTextStyle.regular16Yellow,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.yellow),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomAvatarSlider(),
              Text(
                AppLocalizations.of(context)!.avatar,
                style: AppTextStyle.regular16White,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: screen.height * .01,
              ),
              CustomTextFormField(
                hintText: AppLocalizations.of(context)!.name,
                hintStyle: AppTextStyle.regular16White,
                borderColor: AppColors.darkGray,
                filled: true,
                fillColor: AppColors.darkGray,
                prefix: ImageIcon(
                  AssetImage('assets/images/ic_name.png'),
                  color: AppColors.white,
                ),
              ),
              SizedBox(
                height: screen.height * .02,
              ),
              CustomTextFormField(
                hintText: AppLocalizations.of(context)!.email,
                hintStyle: AppTextStyle.regular16White,
                borderColor: AppColors.darkGray,
                filled: true,
                fillColor: AppColors.darkGray,
                prefix: ImageIcon(
                  AssetImage('assets/images/ic_email.png'),
                  color: AppColors.white,
                ),
              ),
              SizedBox(
                height: screen.height * .02,
              ),
              CustomTextFormField(
                hintText: AppLocalizations.of(context)!.password,
                hintStyle: AppTextStyle.regular16White,
                borderColor: AppColors.darkGray,
                filled: true,
                fillColor: AppColors.darkGray,
                prefix: ImageIcon(
                  AssetImage('assets/images/ic_password.png'),
                  color: AppColors.white,
                ),
                suffix: ImageIcon(
                  AssetImage('assets/images/ic_hidden.png'),
                  color: AppColors.white,
                ),
              ),
              SizedBox(
                height: screen.height * .02,
              ),
              CustomTextFormField(
                hintText: AppLocalizations.of(context)!.confirm_password,
                hintStyle: AppTextStyle.regular16White,
                borderColor: AppColors.darkGray,
                filled: true,
                fillColor: AppColors.darkGray,
                prefix: ImageIcon(
                  AssetImage('assets/images/ic_password.png'),
                  color: AppColors.white,
                ),
                suffix: ImageIcon(
                  AssetImage('assets/images/ic_hidden.png'),
                  color: AppColors.white,
                ),
              ),
              SizedBox(
                height: screen.height * .02,
              ),
              CustomTextFormField(
                keyboardType: TextInputType.number,
                hintText: AppLocalizations.of(context)!.phone_number,
                hintStyle: AppTextStyle.regular16White,
                borderColor: AppColors.darkGray,
                filled: true,
                fillColor: AppColors.darkGray,
                prefix: ImageIcon(
                  AssetImage('assets/images/ic_phone.png'),
                  color: AppColors.white,
                ),
              ),
              SizedBox(
                height: screen.height * .02,
              ),
              CustomElevatedButton(
                onClick: () {},
                text: AppLocalizations.of(context)!.create_account,
                backgroundColor: AppColors.yellow,
                borderColor: AppColors.yellow,
                textStyle: AppTextStyle.regular20Black,
                center: true,
                margin: 14.5,
              ),
              SizedBox(
                height: screen.height * .015,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)!.already_have_account,
                    style: AppTextStyle.regular14White,
                  ),
                  SizedBox(
                    width: screen.width * .02,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      AppLocalizations.of(context)!.login,
                      style: AppTextStyle.black14Yellow,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screen.height * .015,
              ),
              CustomLanguageToggleSwitch(),
            ],
          ),
        ),
      ),
    );
  }
}
