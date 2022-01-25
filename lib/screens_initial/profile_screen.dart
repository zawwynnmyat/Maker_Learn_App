import 'package:flutter/material.dart';
import 'package:maker_learn/models/app_state_manager.dart';
import 'package:maker_learn/models/profile_manager.dart';
import 'package:provider/provider.dart';
import 'package:maker_learn/models/user.dart';
import 'package:maker_learn/models/makerlearn_pages.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
class ProfileScreen extends StatefulWidget {
  // TODO: ProfileScreen MaterialPage Helper

  static MaterialPage page(User user) {
    return MaterialPage(
        name: MakerLearnPages.profilePath,
        key: ValueKey(MakerLearnPages.profilePath),
        child: ProfileScreen(user: user,)
    );
  }

  final User user;
  const ProfileScreen({Key key, this.user}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('About us?'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Provider.of<ProfileManager>(context, listen: false).tapOnProfile(false);
          },
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16.0),
            buildProfile(),
            const SizedBox(height: 16.0,),
            Expanded(
              child: buildMenu(),
            )
          ],
        ),
      ),
    );
  }

  _callNumber() async{
    const number = '+959794403416'; //set the number here
    bool res = await FlutterPhoneDirectCaller.callNumber(number);
  }

  Widget buildMenu() {
    return ListView(
      children: [
        ListTile(
          title: const Text('🔍 Visit Our Page'),
          onTap: () {
            Provider.of<ProfileManager>(context, listen: false).tapOnHexaDev(true);
          },
        ),
        ListTile(
          title: const Text('♻️ Restart App'),
          onTap: () {
            Provider.of<ProfileManager>(context, listen: false).tapOnProfile(false);
            Provider.of<AppStateManager>(context, listen: false).logout();
          },
        ),
        ListTile(
          title: const Text('💌 zawwynnmyat@icloud.com'),
        ),
        ListTile(
          title: const Text('📞 Phone Call Now',),
          onTap: () {
            _callNumber();
            //Provider.of<ProfileManager>(context, listen: false).tapOnHexaDev(true);
          },
        ),
      ],

    );
  }




  Widget buildProfile() {
    return Column(
      children: [
        Image(image: AssetImage(widget.user.profileImageUrl,), height: 150,),
        const SizedBox(height: 16.0),
        Text(
          widget.user.firstName,
          style: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w600
          ),
        ),
        SizedBox(height: 16.0),
        Text(widget.user.role, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
      ],
    );
  }
}
