import 'package:flutter/material.dart';
import 'package:sirius/utils/colors.dart';

class FeaturesBox extends StatelessWidget {
  final String featureTitle;
  final String featureDesc;
  final Color boxColor;

  const FeaturesBox({
    Key? key,
    required this.featureTitle,
    required this.featureDesc,
    required this.boxColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20).copyWith(
          left: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              featureTitle,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: AppColors.blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 10),
            Text(
              featureDesc,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: AppColors.blackColor,
                    fontSize: 18,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
