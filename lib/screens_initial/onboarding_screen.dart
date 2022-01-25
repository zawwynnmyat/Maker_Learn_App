import 'package:flutter/material.dart';
import 'package:maker_learn/models/app_state_manager.dart';
import 'package:maker_learn/models/makerlearn_pages.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  // TODO: Add OnboardingScreen MaterialPage Helper

  static MaterialPage page() {
    return MaterialPage(
      name: MakerLearnPages.onboardingPath,
      key: ValueKey(MakerLearnPages.onboardingPath),
        child: const OnboardingScreen()
    );
  }

  const OnboardingScreen({Key key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  final Color rwColor = const Color.fromRGBO(64, 143, 77, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text('Getting Started', style: TextStyle(color: Colors.black),),
        leading: GestureDetector(
          child: const Icon(
            Icons.chevron_left,
            size: 35,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context, true);
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: buildPages()),
            buildIndicator(),
            buildActionButtons(),
          ],
        ),
      ),
    );
  }

  Widget buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        MaterialButton(
          child: const Text('Skip'),
          onPressed: () {
            // TODO: Onboarding -> Navigate to home
            Provider.of<AppStateManager>(context, listen: false).completeOnboard();
          },
        ),
      ],
    );
  }

  Widget buildPages() {
    return PageView(
      controller: controller,
      children: [
        onboardPageView(
            const AssetImage('assets/recommend.png'),
            '''Read our Articles'''),
        onboardPageView(const AssetImage('assets/sheet.png'),
            'Articles for Electronic and Embedded System Hobbyist'),
        onboardPageView(const AssetImage('assets/list.png'),
            'Answer Quiz and Examine Your Skill'),
      ],
    );
  }

  Widget onboardPageView(ImageProvider imageProvider, String text) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image(
                fit: BoxFit.fitWidth,
                image: imageProvider,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              text,
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
          ]),
    );
  }

  Widget buildIndicator() {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: WormEffect(
        activeDotColor: rwColor,
      ),
    );
  }
}
