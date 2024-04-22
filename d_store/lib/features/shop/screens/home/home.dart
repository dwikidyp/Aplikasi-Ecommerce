import 'package:d_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:d_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: TColors.primary,
              padding: const EdgeInsets.all(0),
              child: Stack(
                children: [
                  Positioned(
                    top: -150,
                    right: -250,
                    child: TCircularContainer(
                      backgroundColor: TColors.textWhite.withOpacity(0.1),
                    ),
                  ),
                  TCircularContainer(
                    backgroundColor: TColors.textWhite.withOpacity(0.1),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
