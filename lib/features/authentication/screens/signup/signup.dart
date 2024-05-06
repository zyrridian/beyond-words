import 'package:beyond_words/features/authentication/screens/login/login.dart';
import 'package:beyond_words/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:beyond_words/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../widgets/account_button.dart';
import '../widgets/form_divider.dart';
import '../widgets/social_buttons.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: ZSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Image(height: 200, image: AssetImage(ZImages.logo))],
              ),

              /// Form
              const TSignUpForm(),

              /// Divider
              const ZFormDivider(dividerText: ZTexts.orBetterYet),
              const SizedBox(height: ZSizes.spaceBetweenSections),

              /// Social Buttons
              ZSocialButtons(
                image: ZImages.google,
                text: 'Continue with Google',
                onPressed: () {},
              ),
              const SizedBox(height: ZSizes.spaceBetweenItems),
              ZSocialButtons(
                image: ZImages.facebook,
                text: 'Continue with Facebook',
                onPressed: () {},
              ),
              const SizedBox(height: ZSizes.spaceBetweenItems),

              /// Other Buttons
              ZAccountButton(
                title: "Already have an account?",
                subtitle: 'Login',
                onPressed: () => Get.off(() => const LoginScreen()),
              ),
              const SizedBox(height: ZSizes.spaceBetweenItems),

              /// Terms and Conditions
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'By creating an account, you accept our ',
                      style: TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                    TextSpan(
                      text: 'Terms and conditions',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontSize: 14.0,
                      ),
                    ),
                    TextSpan(
                      text: ' you read our ',
                      style: TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                    TextSpan(
                      text: 'Privacy Policy.',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
