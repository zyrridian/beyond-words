import 'package:beyond_words/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

class ZLoginForm extends StatelessWidget {
  const ZLoginForm({
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
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: ZSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: const InputDecoration(
                labelText: 'Password',
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: ZSizes.spaceBetweenItems / 2),

            /// Forget Password
            Row(
              children: [
                const Text('Forget Password?'),
                const SizedBox(width: ZSizes.spaceBetweenItems / 3),
                TextButton(
                  onPressed: () {},
                  child: const Text('Reset your password'),
                ),
              ],
            ),
            const SizedBox(height: ZSizes.spaceBetweenItems / 2),

            /// Login Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const NavigationMenu()),
                child: const Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
