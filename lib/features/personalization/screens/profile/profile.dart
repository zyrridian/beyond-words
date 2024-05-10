import 'package:beyond_words/common/widgets/appbar/appbar.dart';
import 'package:beyond_words/utils/constants/image_strings.dart';
import 'package:beyond_words/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ZAppBar(
        title: Center(
          child: Text(
            'My Profile',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: ZSizes.defaultSpace,
            right: ZSizes.defaultSpace,
            top: ZSizes.defaultSpace,
            bottom: ZSizes.defaultSpace * 5,
          ),
          child: Column(
            children: [
              /// Profile Image
              const Image(image: AssetImage(ZImages.emptyProfile)),
              const SizedBox(height: ZSizes.spaceBetweenSections),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Name
                  const Text('Name', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  TextFormField(
                    // enabled: false,
                    initialValue: 'Ashley Namir',
                    decoration: const InputDecoration(
                      hintText: 'Name',
                      contentPadding: EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
                    ),
                  ),
                  const SizedBox(height: ZSizes.spaceBetweenItems),

                  /// Email
                  const Text('Email', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  TextFormField(
                    // enabled: false,
                    initialValue: 'ashley.namir@gmail.com',
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      contentPadding: EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
                    ),
                  ),
                  const SizedBox(height: ZSizes.spaceBetweenItems),

                  /// Password
                  const Text('Password', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  TextFormField(
                    // enabled: false,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    initialValue: 'thisispassword',
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      contentPadding: EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
                      suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),
                  const SizedBox(height: ZSizes.spaceBetweenItems),
                ],
              ),

              /// Button
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    foregroundColor: Colors.white,
                    backgroundColor: ZColors.blue,
                    disabledForegroundColor: Colors.grey,
                    disabledBackgroundColor: Colors.grey,
                    side: const BorderSide(color: ZColors.blue),
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                  ),
                  child: const Text('Edit Profile', style: TextStyle(fontSize: 14)),
                ),
              ),
              const SizedBox(height: ZSizes.spaceBetweenItems / 4),

              /// Divider
              const Divider(color: ZColors.darkerGrey, thickness: 0.5),

              /// Buttons
              Column(
                children: [
                  /// More Settings
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.black)),
                    child: const Row(
                      children: [
                        Icon(Icons.settings_outlined),
                        SizedBox(width: ZSizes.spaceBetweenItems),
                        Text('More Settings', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),

                  /// Add Account
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.black)),
                    child: const Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(width: ZSizes.spaceBetweenItems),
                        Text('Add Account', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),

                  /// Logout
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.black)),
                    child: const Row(
                      children: [
                        Icon(Icons.logout),
                        SizedBox(width: ZSizes.spaceBetweenItems),
                        Text('Logout', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
