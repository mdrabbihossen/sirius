import 'package:flutter/material.dart';
import 'package:sirius/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.menu),
        title: Image.asset(
          "assets/images/sirius_logo.png",
          width: 200,
        ),
      ),
      body: Column(
        children: [
          // sirius assistant logo
          Stack(
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  margin: const EdgeInsets.only(top: 4),
                  decoration: const BoxDecoration(
                    color: AppColors.assistantCircleColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Container(
                height: 123,
                margin: const EdgeInsets.only(top: 4),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/sirius.png'),
                  ),
                ),
              ),
            ],
          ),
          // sirius assistant logo end
          // chat bubble
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
              top: 30,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.borderColor,
              ),
              borderRadius: BorderRadius.circular(20).copyWith(
                topLeft: Radius.zero,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                "Good Morning! This is sirius. What task can I do for you?",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: AppColors.mainFontColor,
                      fontSize: 19,
                    ),
              ),
            ),
          )
          // chat bubble end
        ],
      ),
    );
  }
}
