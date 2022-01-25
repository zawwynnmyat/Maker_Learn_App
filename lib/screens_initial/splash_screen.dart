import 'package:flutter/material.dart';
import 'package:maker_learn/models/app_state_manager.dart';
import 'package:maker_learn/models/makerlearn_pages.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  // TODO: SplashScreen MaterialPage Helper

  static MaterialPage page() {
     return MaterialPage(
       key: ValueKey(MakerLearnPages.splashPath),
         name: MakerLearnPages.splashPath,
         child: const SplashScreen()
     );
  }
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    Provider.of<AppStateManager>(context, listen: false).initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              height: 150,
              image: AssetImage('assets/Maker Learn Logo.png'),
            ),
            SizedBox(height: 20,),
            const Text('Initializing...', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
          ],
        ),
      ),
    );
  }
}
