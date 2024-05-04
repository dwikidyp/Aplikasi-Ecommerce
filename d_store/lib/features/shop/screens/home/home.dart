import 'package:d_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:d_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:d_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///Appbar
                  const THomeAppBar(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Searchbar
                  const TSearchContainer(text: 'Search in Store'),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  // Categories
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [TSectionHeading()],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    this.textColor,
    required this.showActionButton,
    required this.title,
    required this.buttonTitle,
    this.onPressed,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}
