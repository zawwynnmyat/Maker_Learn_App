import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'maker_learn_theme.dart';
import 'circle_image.dart';

class InstructorCard extends StatefulWidget {
  // This widget is the root of your application.

  const InstructorCard({Key key, this.instructorName, this.title}) : super(key: key);

  final String instructorName;
  final String title;

  @override
  State<InstructorCard> createState() => _InstructorCardState();
}

class _InstructorCardState extends State<InstructorCard> {



  void saveFavourite(bool fvr) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('favourite', fvr);
  }

  void getFavourite() async {
    final prefs = await SharedPreferences.getInstance();

    if(prefs.containsKey('favourite')) {
      _isFavorited = prefs.getBool('favourite');

      if(_isFavorited == null) {
        _isFavorited = false;
      }

    }
  }

  static bool _isFavorited = false;

  @override
  void initState() {
    // TODO: implement initState
    getFavourite();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleImage(
                  imageRadius: 28,
                  imageProvider: AssetImage('assets/suang_pi.jpg'),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.instructorName, style: MakerLearnTheme.lightTextTheme.headline2,),
                   Text(widget.title, style: MakerLearnTheme.lightTextTheme.headline3,)
                  ],
                ),
                SizedBox(width: 30,),
                IconButton(
                    icon: Icon(_isFavorited ? Icons.favorite : Icons.favorite_border),
                  iconSize: 30,
                  color: Colors.red[400],
                  onPressed: () {
                    setState(() {
                      _isFavorited = !_isFavorited;
                      saveFavourite(_isFavorited);
                    });
                  },
                )
              ],
           ),
        )
    );
  }
}