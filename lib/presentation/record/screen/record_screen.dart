import 'package:calcrush/presentation/record/record_state.dart';
import 'package:calcrush/ui/ui_colors.dart';
import 'package:calcrush/util/admob_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class RecordScreen extends StatefulWidget {
  final RecordState state;
  final int totalScore;

  const RecordScreen({
    required this.state,
    required this.totalScore,
    super.key,
  });

  @override
  State<RecordScreen> createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black87,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: widget.state.record != null ? Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: ListView(
                  children: [
                    const SizedBox(height: 50.0,),
                    const Center(
                      child: Text(
                        'Total Score',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4.0,),
                    Center(
                      child: Text(
                        widget.totalScore.toString(),
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    const SizedBox(height: 100.0,),
                    const _SectionTitle(
                      operator: '+',
                      operatorName: 'Addition',
                      operatorColor: dodgerBlue,
                      operatorNameColor: dodgerBlue,
                    ),
                    SectionContent(
                      level1: widget.state.record!.addition.level1,
                      level2: widget.state.record!.addition.level2,
                      level3: widget.state.record!.addition.level3,
                    ),
                    const Divider(
                      thickness: 1.25,
                      color: lightGrey,
                    ),
                    const _SectionTitle(
                      operator: '-',
                      operatorName: 'Subtraction',
                      operatorColor: dodgerBlue,
                      operatorNameColor: dodgerBlue,
                    ),
                    SectionContent(
                      level1: widget.state.record!.subtraction.level1,
                      level2: widget.state.record!.subtraction.level2,
                      level3: widget.state.record!.subtraction.level3,
                    ),
                    const Divider(
                      thickness: 1.25,
                      color: lightGrey,
                    ),
                    const _SectionTitle(
                      operator: '×',
                      operatorName: 'Multiplication',
                      operatorColor: dodgerBlue,
                      operatorNameColor: dodgerBlue,
                    ),
                    SectionContent(
                      level1: widget.state.record!.multiplication.level1,
                      level2: widget.state.record!.multiplication.level2,
                      level3: widget.state.record!.multiplication.level3,
                    ),
                    const Divider(
                      thickness: 1.25,
                      color: lightGrey,
                    ),
                    const _SectionTitle(
                      operator: '÷',
                      operatorName: 'Division',
                      operatorColor: dodgerBlue,
                      operatorNameColor: dodgerBlue,
                    ),
                    SectionContent(
                      level1: widget.state.record!.division.level1,
                      level2: widget.state.record!.division.level2,
                      level3: widget.state.record!.division.level3,
                    ),
                    const Divider(
                      thickness: 1.25,
                      color: lightGrey,
                    ),
                    const _SectionTitle(
                      operator: '?',
                      operatorName: 'Random',
                      operatorColor: dodgerBlue,
                      operatorNameColor: dodgerBlue,
                    ),
                    SectionContent(
                      level1: widget.state.record!.randomOperator.level1,
                      level2: widget.state.record!.randomOperator.level2,
                      level3: widget.state.record!.randomOperator.level3,
                    ),
                    const SizedBox(height: 8.0,),
                  ],
                ),
              ) : const Center(
                child: Text(
                  'No records',
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

class _SectionTitle extends StatelessWidget {
  final String operator;
  final String operatorName;
  final Color operatorColor;
  final Color operatorNameColor;

  const _SectionTitle({
    required this.operator,
    required this.operatorName,
    required this.operatorColor,
    required this.operatorNameColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          operator,
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.w700,
            color: operatorColor,
          ),
        ),
        const SizedBox(width: 8.0,),
        Text(
          operatorName,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
            color: operatorNameColor,
          ),
        ),
      ],
    );
  }
}

class SectionContent extends StatelessWidget {
  final int level1;
  final int level2;
  final int level3;

  const SectionContent({
    required this.level1,
    required this.level2,
    required this.level3,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 4.0,
        bottom: 8.0,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Level 1',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              Text(
                level1.toString(),
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Level 2',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              Text(
                level2.toString(),
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Level 3',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              Text(
                level3.toString(),
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

