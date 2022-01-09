import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:view_pager/FadeAnimation.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: const HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(initialPage: 0)
    ..addListener(
      () {
        // on scroll listener
      },
    );
  final String narutoFact =
      'Uzumaki Naruto (Japanese: NARUTO) is a Japanese manga series written and illustrated by Masashi Kishimoto. It tells the story of Naruto Uzumaki, a young ninja who seeks recognition from his peers and dreams of becoming the Hokage, the leader of his village. The story is told in two parts the first set in Naruto pre-teen...';
  final String sasukeFact =
      'Sasuke Uchiha (Japanese: うちは サスケ, Hepburn: Uchiha Sasuke) is a fictional character in the Naruto manga and anime franchise created by Masashi Kishimoto. Sasuke belongs to the Uchiha clan, a notorious ninja family, and one of the most powerful, allied with Konohagakure (木ノ葉隠れの里, English version ...';
  final String sakuraFact =
      'Sakura Haruno (Japanese: 春野 サクラ, Hepburn: Haruno Sakura) is a fictional character in the Naruto manga and anime series created by Masashi Kishimoto. Sakura is depicted as a kunoichi affiliated with Konohagakure (木ノ葉隠れの里, English version: "Hidden Leaf Village") and a part of Team 7, which consists of...';

  final int totalPage = 3;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePage('assets/images/1.jpg', 'Uzumaki Naruto', narutoFact, 1),
          makePage('assets/images/2.jpg', 'Sasuke Uchiha', sasukeFact, 2),
          makePage('assets/images/3.jpg', 'Sakura Haruno', sakuraFact, 3),
          // makePage('assets/images/2.jpg'),
          // makePage('assets/images/3.jpg'),
        ],
      ),
    );
  }

  Widget makePage(image, title, description, pageNumber) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: const [.2, .9],
            colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.2)
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '$pageNumber',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '/$totalPage',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeAnimation(
                        delay: 1,
                        child: Text(
                          title,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontFamily: 'CinzelDecorative',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 16),
                      FadeAnimation(
                          delay: 1.5,
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 4),
                                child: const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 4),
                                child: const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 4),
                                child: const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 4),
                                child: const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 12),
                                child: const Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                  size: 15,
                                ),
                              ),
                              const Text(
                                '4.0',
                                style: TextStyle(
                                    color: Colors.white30,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )),
                      const SizedBox(height: 16),
                      FadeAnimation(
                        delay: 2,
                        child: Text(
                          description,
                          style: const TextStyle(
                              color: Colors.white38,
                              fontSize: 16,
                              height: 1.5,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const FadeAnimation(
                        delay: 2.5,
                        child: Text(
                          'READ MORE',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 12),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
