import 'package:beyond_words/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/sizes.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: ZSizes.spaceBetweenSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
                decoration: const InputDecoration(labelText: 'Email')),
            const SizedBox(height: ZSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
                decoration: const InputDecoration(labelText: 'Password')),
            const SizedBox(height: ZSizes.spaceBtwInputFields),

            /// Confirm Password
            TextFormField(
                decoration: const InputDecoration(labelText: 'Password')),
            const SizedBox(height: ZSizes.spaceBetweenSections),

            /// Sign Up Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const NavigationMenu()),
                child: const Text('Sign Up'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
