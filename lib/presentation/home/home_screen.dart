import 'package:calcrush/presentation/components/common_flexible_button.dart';
import 'package:calcrush/presentation/components/common_text_button.dart';
import 'package:calcrush/ui/ui_colors.dart';
import 'package:calcrush/util/admob_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  BannerAd? _bannerAd;
  bool _isLoaded = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if(_bannerAd == null && !_isLoaded) {
      _loadAd();
    }
  }

  Future<void> _loadAd() async {
    await Future.delayed(const Duration(milliseconds: 300));
    final size = await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(
        MediaQuery.sizeOf(context).width.truncate());
    if (size == null) {
      return;
    }
    BannerAd(
      size: size,
      adUnitId: AdMobService.bannerAdUnitId!,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _bannerAd = ad as BannerAd;
            _isLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
        },
      ),
      request: const AdRequest(),
    ).load();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 60.0,
                ),
                child: Column(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: SizedBox(
                              height: 108.0,
                              width: 210.0,
                              child: Stack(
                                children: [
                                  Center(
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        'Calcrush',
                                        style: TextStyle(
                                          fontSize: 36.0,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 5,
                                    top: 12,
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.w700,
                                        color: lightBlue,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 25,
                                    bottom: 10,
                                    child: Text(
                                      '-',
                                      style: TextStyle(
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.w700,
                                        color: lightBlue,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 102,
                                    top: 5,
                                    child: Text(
                                      '×',
                                      style: TextStyle(
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.w700,
                                        color: lightBlue,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    bottom: 23.5,
                                    child: Text(
                                      '÷',
                                      style: TextStyle(
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.w700,
                                        color: lightBlue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Center(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                'Sharpen your mental math!',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: CommonFlexibleButton(
                                  text: 'Start',
                                  onPressed: () {
                                    context.push('/ready');
                                  },
                                  color: skyBlue,
                                  fontSize: 32.0,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 32.0,),
                          CommonTextButton(
                            text: 'View Records',
                            color: deepRoyalBlue,
                            onPressed: () {
                              context.push('/record');
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if(_bannerAd != null && _isLoaded)
              SizedBox(
                width: _bannerAd!.size.width.toDouble(),
                height: _bannerAd!.size.height.toDouble(),
                child: AdWidget(
                  ad: _bannerAd!,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
