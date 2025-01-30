import 'package:calcrush/presentation/components/common_flexible_button.dart';
import 'package:calcrush/presentation/components/common_text_button.dart';
import 'package:calcrush/presentation/game/game_state.dart';
import 'package:calcrush/ui/ui_colors.dart';
import 'package:calcrush/util/admob_service.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class GameScreen extends StatefulWidget {
  final GameState state;
  final Function(int) onOptionTap;
  final VoidCallback onExitTap;

  const GameScreen({
    required this.state,
    required this.onOptionTap,
    required this.onExitTap,
    super.key,
  });

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  BannerAd? _bannerAd;
  bool _isBannerLoaded = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if(_bannerAd == null && !_isBannerLoaded) {
      _loadBannerAd();
    }
  }

  Future<void> _loadBannerAd() async {
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
            _isBannerLoaded = true;
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
    final List<int> options = widget.state.question != null ? widget.state.question!.options : [];
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 30.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Score ${widget.state.score.toString()}',
                            style: const TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            'Life ${widget.state.life.toString()}',
                            style: const TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      if(widget.state.question != null)
                        Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 44.0,
                                  child: widget.state.isCorrect || widget.state.isWrong ? Center(
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        widget.state.isCorrect ? 'Correct!' : 'Wrong',
                                        style: TextStyle(
                                          fontSize: 32.0,
                                          fontWeight: FontWeight.w700,
                                          color: widget.state.isCorrect ? Colors.green : Colors.red,
                                        ),
                                      ),
                                    ),
                                  ) : null,
                                ),
                                const SizedBox(height: 4.0,),
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Column(
                                    children: [
                                      Text(
                                        widget.state.question!.expression,
                                        style: const TextStyle(
                                          fontSize: 52.0,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      if(widget.state.isWrong)
                                        Text(
                                          '= ${widget.state.question!.correctAnswer.toString()}',
                                          style: const TextStyle(
                                            fontSize: 52.0,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 44.0,),
                              ],
                            ),
                          ),
                      if(widget.state.question != null)
                        Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: CommonFlexibleButton(
                                    text: options[0].toString(),
                                    onPressed: () {
                                      widget.onOptionTap(options[0]);
                                    },
                                    color: lightBlue,
                                    fontSize: 48.0,
                                  ),
                                ),
                                const SizedBox(width: 16.0,),
                                Expanded(
                                  child: CommonFlexibleButton(
                                    text: options[1].toString(),
                                    onPressed: () {
                                      widget.onOptionTap(options[1]);
                                    },
                                    color: skyBlue,
                                    fontSize: 48.0,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16.0,),
                            Row(
                              children: [
                                Expanded(
                                  child: CommonFlexibleButton(
                                    text: options[2].toString(),
                                    onPressed: () {
                                      widget.onOptionTap(options[2]);
                                    },
                                    color: dodgerBlue,
                                    fontSize: 48.0,
                                  ),
                                ),
                                const SizedBox(width: 16.0,),
                                Expanded(
                                  child: CommonFlexibleButton(
                                    text: options[3].toString(),
                                    onPressed: () {
                                      widget.onOptionTap(options[3]);
                                    },
                                    color: royalBlue,
                                    fontSize: 48.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      const SizedBox(height: 16.0,),
                      CommonTextButton(
                        text: 'Exit',
                        color: deepRoyalBlue,
                        onPressed: widget.onExitTap,
                      ),
                    ],
                  ),
                ),
              ),
              if(_bannerAd != null && _isBannerLoaded)
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
      ),
    );
  }
}
