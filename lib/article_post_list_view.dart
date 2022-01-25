import 'package:flutter/material.dart';
import 'package:maker_learn/article_post_thumbnil.dart';
import 'package:maker_learn/tutorial_thumbnil.dart';
import 'post.dart';
import 'maker_learn_theme.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class ArticlePostListView extends StatelessWidget {
  // This widget is the root of your application

  ArticlePostListView({Key key}) : super(key: key);

  List<String> articleTitles = [
    'Data Representation for Assembly Programmers',
    'Interfacing LM35 Temperature Sensor with Raspberry Pi Pico',
    'Writing Assembly Programs with Keil uVision 5',
    'Calculating Discrete Fourier Transform (DFT) with STM32',
    'CircuitPython Push Button Input',
    'Ultrasonic Sensor HCSR-04 and Raspberry Pi Pico',
    'Assembly Subroutine',
    'What is Interrupt? How to use External Interrupt with Raspberry Pi Pico',
    'How to Program Raspberry Pi Pico with C Language',
  ];

  List<String> artilePDFUrls = [
    'https://github.com/zawwynnmyat/maker_learn_articles/raw/main/article001.pdf',
    'https://github.com/zawwynnmyat/maker_learn_articles/raw/main/article005.pdf',
    'https://github.com/zawwynnmyat/maker_learn_articles/raw/main/article002.pdf',
    'https://github.com/zawwynnmyat/maker_learn_articles/raw/main/article008.pdf',
    'https://github.com/zawwynnmyat/maker_learn_articles/raw/main/article007.pdf',
    'https://github.com/zawwynnmyat/maker_learn_articles/raw/main/article004.pdf',
    'https://github.com/zawwynnmyat/maker_learn_articles/raw/main/article003.pdf',
    'https://github.com/zawwynnmyat/maker_learn_articles/raw/main/article009.pdf',
    'https://github.com/zawwynnmyat/maker_learn_articles/raw/main/article006.pdf'
  ];

  List<String> writerPictures= [
    'assets/suang_pi.jpg',
    'assets/zaw_myat.jpg',
    'assets/suang_pi.jpg',
    'assets/zaw_myat.jpg',
    'assets/zaw_myat.jpg',
    'assets/zaw_myat.jpg',
    'assets/suang_pi.jpg',
    'assets/zaw_myat.jpg',
    'assets/zaw_myat.jpg',
  ];
  List<String> durations = [
    'Suang Pi',
    'Zaw Myat',
    'Suang Pi',
    'Zaw Myat',
    'Zaw Myat',
    'Zaw Myat',
    'Zaw Myat',
    'Suang Pi',
    'Zaw Myat',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 0),
      child: (
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Top Articles", style: Theme.of(context).textTheme.headline2,),

              const SizedBox(height: 16,),
              ListView.separated(
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index){

                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) {
                              return PDFViewerFromUrl(
                                url: artilePDFUrls[index],
                              );
                            }

                          )
                        );
                      },
                        child: ArticlePostThumbnil(
                          postTitle: articleTitles[index],
                          profilePictureUrl: writerPictures[index],
                          duration: durations[index],
                        )
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 16,);
                  },
                  itemCount: articleTitles.length
              ),
              const SizedBox(height: 16,)
            ],
          )
      ),
    );
  }
}

class PDFViewerFromUrl extends StatelessWidget {
  const PDFViewerFromUrl({Key key,this.url}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.purple,
      ),
      body: const PDF().fromUrl(
        url,
        placeholder: (double progress) => Center(
          child: Container(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 CircularProgressIndicator(color: Colors.purple,),
                SizedBox(height: 20,),
                Text('$progress %', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                 SizedBox(height: 10,),
                 Text('Article is loading...',  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
               ],
             ),
          )
        ),
        errorWidget: (dynamic error) => Center(child: Text(error.toString())),
      ),
    );
  }
}

class PDFViewerCachedFromUrl extends StatelessWidget {
  const PDFViewerCachedFromUrl({Key key, this.url}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: const PDF().cachedFromUrl(
        url,
        placeholder: (double progress) => Center(child: Text('$progress %')),
        errorWidget: (dynamic error) => Center(child: Text(error.toString())),
      ),
    );
  }
}
