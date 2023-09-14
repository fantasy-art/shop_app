import 'package:flutter/material.dart';
import 'package:shop_app/utils/colors.dart';
import 'package:shop_app/utils/utils.dart';

import '../widgets/image_listview.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned(
            top: -1,
            left: -150,
            child: Row(
              children: [
                ImageListView(startIndex: 0),
                ImageListView(startIndex: 1),
                ImageListView(startIndex: 2),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
            child: const Text(
              'MYSTYLY',
              textAlign: TextAlign.center,
              style: kTitleStyle,
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.white60,
                    Colors.white,
                    Colors.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Your Appearrance\nShows Your Quality',
                      textAlign: TextAlign.center,
                      style: kNormalStyle.copyWith(fontSize: 30, height: 1.3),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Change Your Quality Of Your\nAppearance With MYSTYLY',
                      textAlign: TextAlign.center,
                      style: kNormalStyle.copyWith(
                          height: 1.5,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: buildIndicators(),
                    )
                  ],
                ),
              )),
          Positioned(
              bottom: 30,
              left: 20,
              right: 20,
              child: SizedBox(
                height: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: kBackgroundColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () => Navigator.of(context).pushNamed('Home'),
                    child: const Text('SignUp With Email')),
              ))
        ],
      ),
    );
  }
}
