import 'package:admobflutterfirst/admob/admob_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class IntertitialScreen extends StatefulWidget {
  const IntertitialScreen({super.key});

  @override
  State<IntertitialScreen> createState() => _IntertitialScreenState();
}

class _IntertitialScreenState extends State<IntertitialScreen> {
  late InterstitialAd _interstitialAd;
  bool intertitialAdLoad = false;

  interstitialAdLoaded() {
    InterstitialAd.load(
      adUnitId: AdmobManager.interIdTest,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          _interstitialAd = ad;
          intertitialAdLoad = true;

          _interstitialAd.fullScreenContentCallback =
              FullScreenContentCallback(onAdDismissedFullScreenContent: (ad) {
            _interstitialAd.dispose();
            print("The onAdDismissedFullScreenContent is done!");
          }, onAdFailedToShowFullScreenContent: (ad, error) {
            print("The onAdFailedToShowFullScreenContent is done!");
          });
        },
        onAdFailedToLoad: (LoadAdError error) {},
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    interstitialAdLoaded();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (intertitialAdLoad) {
          _interstitialAd.show();
        }
        return null!;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text("Intertitial Ad"),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                if (intertitialAdLoad) {
                  _interstitialAd.show();
                }
                Navigator.pop(context);
              }),
        ),
        body: const Column(
          children: [],
        ),
      ),
    );
  }
}
