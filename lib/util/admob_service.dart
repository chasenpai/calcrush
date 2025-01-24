import 'dart:io';

import 'package:calcrush/util/admob_ids.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdMobService {

  static String? get bannerAdUnitId {
    if(Platform.isAndroid) {
      return androidBannerTestId;
    }else if(Platform.isIOS) {
      return iosBannerTestId;
    }
    return null;
  }

  static String? get interstitialAdUnitId {
    if(Platform.isAndroid) {
      return androidInterstitialTestId;
    }else if(Platform.isIOS) {
      return iosInterstitialTestId;
    }
    return null;
  }

  static String? get rewardedAdUnitId {
    if(Platform.isAndroid) {
      return androidRewardedTestId;
    }else if(Platform.isIOS) {
      return iosRewardedTestId;
    }
    return null;
  }

  // static BannerAdListener createBannerAdListener({
  //   Function(Ad)? onAdLoaded,
  //   Function(Ad, LoadAdError)? onAdFailedToLoad,
  //   Function(Ad)? onAdOpened,
  //   Function(Ad)? onAdClosed,
  // }) {
  //   return BannerAdListener(
  //     onAdLoaded: onAdLoaded ?? (ad) {
  //       print('Ad loaded: $ad');
  //     },
  //     onAdFailedToLoad: onAdFailedToLoad ?? (ad, error) {
  //       print('Ad failed to load: $error');
  //       ad.dispose();
  //     },
  //     onAdOpened: onAdOpened ?? (ad) {
  //       print('Ad Opened: $ad');
  //     },
  //     onAdClosed: onAdClosed ?? (ad) {
  //       print('Ad Closed: $ad');
  //     },
  //   );
  // }

}