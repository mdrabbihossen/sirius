import 'package:flutter/material.dart';
import 'package:sirius/utils/colors.dart';
import 'package:sirius/views/home/widgets/features_box.dart';

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  "Good Morning! This is sirius. How can I help you?",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: AppColors.mainFontColor,
                        fontSize: 19,
                      ),
                ),
              ),
            ),
            // chat bubble end
            const SizedBox(height: 15),
            // suggestions
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                "Here are a few features 😍",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: AppColors.mainFontColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            // features list
            const FeaturesBox(
              featureTitle: "ChatGPT",
              featureDesc: "A smarter way to stay organized and informed with ChatGPT",
              boxColor: AppColors.firstSuggestionBoxColor,
            ),
            const SizedBox(height: 15),
            const FeaturesBox(
              featureTitle: "Dall-E",
              featureDesc: "Get inspired and stay creative with your personal assistant powered by Dall-E",
              boxColor: AppColors.secondSuggestionBoxColor,
            ),
            const SizedBox(height: 15),
            const FeaturesBox(
              featureTitle: "Smart Voice Assistant",
              featureDesc: "Get the best of both worlds with a voice assistant powered by Dall-E and ChatGPT",
              boxColor: AppColors.thirdSuggestionBoxColor,
            ),
            const SizedBox(height: 10),
            // suggestions end
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: AppColors.firstSuggestionBoxColor,
        child: const Icon(Icons.mic,color: AppColors.blackColor,),
      ),
    );
  }
}
