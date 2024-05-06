import 'package:beyond_words/common/styles/spacing_styles.dart';
import 'package:beyond_words/features/authentication/screens/login/widgets/login_form.dart';
import 'package:beyond_words/features/authentication/screens/signup/signup.dart';
import 'package:beyond_words/utils/constants/image_strings.dart';
import 'package:beyond_words/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/form_divider.dart';
import '../widgets/account_button.dart';
import '../widgets/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const ZLoginForm(),

              /// Divider
              const ZFormDivider(dividerText: 'Or better yet...'),
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
                title: "Don't have an account?",
                subtitle: 'Sign Up',
                onPressed: () => Get.off(() => const SignUpScreen()),
              ),
              const SizedBox(height: ZSizes.spaceBetweenSections),
            ],
          ),
        ),
      ),
    );
  }
}
