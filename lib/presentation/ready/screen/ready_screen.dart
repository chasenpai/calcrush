import 'package:calcrush/presentation/components/common_flexible_button.dart';
import 'package:calcrush/presentation/components/common_text_button.dart';
import 'package:calcrush/presentation/ready/ready_state.dart';
import 'package:calcrush/ui/ui_colors.dart';
import 'package:calcrush/util/admob_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class ReadyScreen extends StatefulWidget {
  final ReadyState state;
  final Function(int) onOperatorTap;
  final Function(int) onLevelTap;
  final VoidCallback onBackTap;

  const ReadyScreen({
    required this.state,
    required this.onOperatorTap,
    required this.onLevelTap,
    required this.onBackTap,
    super.key,
  });

  @override
  State<ReadyScreen> createState() => _ReadyScreenState();
}

class _ReadyScreenState extends State<ReadyScreen> {

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
    _bannerAd = BannerAd(
      size: size,
      adUnitId: AdMobService.bannerAdUnitId!,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _isLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
        },
        onAdOpened: (ad) {
          print('ad open');
        },
        onAdClosed: (ad) {
          print('ad close');
        },
      ),
      request: const AdRequest(),
    )..load();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            if(widget.state.operator == null && widget.state.level == null) context.pop();
            if(widget.state.operator != null && widget.state.level == null) widget.onBackTap();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black87,
          ),
        ),
      ),
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
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Expanded(
                            child: Center(
                              child: Text(
                                widget.state.operator == null && widget.state.level == null
                                    ? 'Choose an operator'
                                    : 'Choose a level',
                                style: const TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: kToolbarHeight,),
                        ],
                      ),
                    ),
                    if(widget.state.operator == null && widget.state.level == null)
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: CommonFlexibleButton(
                                    text: '+',
                                    onPressed: () {
                                      widget.onOperatorTap(0);
                                    },
                                    color: lightBlue,
                                    fontSize: 62.0,
                                  ),
                                ),
                                const SizedBox(width: 16.0,),
                                Expanded(
                                  child: CommonFlexibleButton(
                                    text: '-',
                                    onPressed: () {
                                      widget.onOperatorTap(1);
                                    },
                                    color: skyBlue,
                                    fontSize: 62.0,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16.0,),
                            Row(
                              children: [
                                Expanded(
                                  child: CommonFlexibleButton(
                                    text: '×',
                                    onPressed: () {
                                      widget.onOperatorTap(2);
                                    },
                                    color: dodgerBlue,
                                    fontSize: 62.0,
                                  ),
                                ),
                                const SizedBox(width: 16.0,),
                                Expanded(
                                  child: CommonFlexibleButton(
                                    text: '÷',
                                    onPressed: () {
                                      widget.onOperatorTap(3);
                                    },
                                    color: royalBlue,
                                    fontSize: 62.0,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 32.0,),
                            CommonTextButton(
                              text: 'RANDOM',
                              color: deepRoyalBlue,
                              onPressed: () {
                                widget.onOperatorTap(4);
                              },
                            ),
                          ],
                        ),
                      ),
                    if(widget.state.operator != null && widget.state.level == null)
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: CommonFlexibleButton(
                                    text: '1',
                                    onPressed: () {
                                      widget.onLevelTap(0);
                                    },
                                    color: skyBlue,
                                    fontSize: 48.0,
                                  ),
                                ),
                                const SizedBox(width: 16.0,),
                                Expanded(
                                  child: CommonFlexibleButton(
                                    text: '2',
                                    onPressed: () {
                                      widget.onLevelTap(1);
                                    },
                                    color: dodgerBlue,
                                    fontSize: 48.0,
                                  ),
                                ),
                                const SizedBox(width: 16.0,),
                                Expanded(
                                  child: CommonFlexibleButton(
                                    text: '3',
                                    onPressed: () {
                                      widget.onLevelTap(2);
                                    },
                                    color: royalBlue,
                                    fontSize: 48.0,
                                  ),
                                ),
                              ],
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
