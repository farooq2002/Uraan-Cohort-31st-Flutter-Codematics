import 'dart:io';

class AdmobManager {
  AdmobManager._();



  //======================= 1: Pubspec.yml=========================
  // #Add this package : Flutter admob ads
  // google_mobile_ads: ^2.3.0
  //========================2: Android Manifest work=====================================
  // 
  // use this when your are using target sdk version 33 .On other sdk version ni need to add this
  // <uses-permission android:name="com.google.android.gms.permission.AD_ID" />
//======================== 3: Android Manifest work ========================================

  // <meta-data
  // android:name="com.google.android.gms.ads.APPLICATION_ID"
  // android:value="ca-app-pub-3940256099942544~3347511713"/>
  //============================================================================
  // <!--  <meta-data
  // android:name="com.google.android.gms.ads.APPLICATION_ID"
  // android:value="ca-app-pub-8957406679356515~7809599225"/>-->

  //============================4: android minimum sdk version is 19============

  //========================5: IOS Infor.plist work=============================
  // <key>GADApplicationIdentifier</key>
  // <string>ca-app-pub-3940256099942544~3347511713</string>
  // <key>SKAdNetworkItems</key>
  // <array>
  // <dict>
  // <key>SKAdNetworkIdentifier</key>
  // <string>cstr6suwn9.skadnetwork</string>
  // </dict>
  // </array>

  //========================6: in main.dart file================================
  // Future<void> main() async {
  //   WidgetsFlutterBinding.ensureInitialized();
  //   await MobileAds.instance.initialize();

  //   AdmobManager.loadAppOpenAd();
  //   runApp(MyApp());
  // }

  //  In scaffold
  // resizeToAvoidBottomInset: false,

  //=============== Testing Ids ==================================================
  static const appIdTest = "ca-app-pub-3940256099942544~3347511713";
  static const appOpenIdTest = "ca-app-pub-3940256099942544/3419835294";
  static const bannerIdTest = "ca-app-pub-3940256099942544/6300978111";
  static const interIdTest = "ca-app-pub-3940256099942544/1033173712";
  static const interVideoIdTest = "ca-app-pub-3940256099942544/8691691433";
  static const rewardedIdTest = "ca-app-pub-3940256099942544/5224354917";
  static const rewardedIntertitialIdTest =
      "ca-app-pub-3940256099942544/1033173712";
  static const nativeAdvancedIdTest = "ca-app-pub-3940256099942544/2247696110";
  static const nativeAdvancedVideoIdTest =
      "ca-app-pub-3940256099942544/1044960115";

//=============== Real Ids ==================================================

  static final String appID = Platform.isAndroid
      ? 'ca-app-pub-2972720642664088~1026983237' // android
      : 'ca-app-pub-2972720642664088~3338038538'; // ios

  static final String appOpenID = Platform.isAndroid
      ? 'ca-app-pub-2972720642664088/6870089432' // android
      : 'ca-app-pub-2972720642664088/2575621200'; // ios

  static final String bannerID = Platform.isAndroid
      ? 'ca-app-pub-2972720642664088/3214162878' // android
      : 'ca-app-pub-2972720642664088/9328731810'; // ios

  static final String interID = Platform.isAndroid
      ? 'ca-app-pub-2972720642664088/9013284465' // android
      : 'ca-app-pub-2972720642664088/4750605820'; // ios

  static final String rewardedID = Platform.isAndroid
      ? 'ca-app-pub-2972720642664088/7317059412' // android
      : 'ca-app-pub-2972720642664088/3489495046'; // ios

  //================ Admob ==============================
}
