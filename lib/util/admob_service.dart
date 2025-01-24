import 'dart:io';

import 'package:calcrush/util/admob_ids.dart';

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

}