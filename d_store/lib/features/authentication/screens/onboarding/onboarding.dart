import 'package:d_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:d_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:d_store/utils/constants/image_strings.dart';
import 'package:d_store/utils/constants/text_strings.dart';
import 'package:d_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal scrollable pages
          PageView(
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// skip button
          OnBoardingSkip(),

          /// Dot Navigation
          Positioned(
            bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
            child: SmoothPageIndicator(controller: PageController(), count: 3),
          )
        ],
      ),
    );
  }
}
