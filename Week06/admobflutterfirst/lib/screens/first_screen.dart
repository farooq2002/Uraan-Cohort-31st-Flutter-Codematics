import 'package:admobflutterfirst/admob/admob_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late BannerAd _bannerAd;
  bool isBannerAdLoaded = false;

  void initBanerAd() {
    _bannerAd = BannerAd(
        size: AdSize.fullBanner,
        adUnitId: AdmobManager.bannerIdTest,
        listener: BannerAdListener(onAdLoaded: (Ad ad) {
          print("The banner is loaded !");
          setState(() {
            isBannerAdLoaded = true;
          });
        }, onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print("The banner ad error :$error");
        }),
        request: const AdRequest());

    _bannerAd.load();
  }

  @override
  void initState() {
    super.initState();
    initBanerAd();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("admob"),
        ),
        body: Container(),
        bottomNavigationBar: isBannerAdLoaded
            ? Container(
                color: Colors.green,
                height: AdSize.banner.height.toDouble(),
                width: AdSize.banner.width.toDouble(),
                child: AdWidget(ad: _bannerAd),
              )
            : const SizedBox(),
      ),
    );
  }
}
