import 'package:d_store/utils/constants/image_strings.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:d_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(TImages.userProfileImage1),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('Jamal', style: Theme.of(context).textTheme.titleLarge),
          ],
        )
      ],
    );
  }
}
