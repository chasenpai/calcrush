import 'package:calcrush/presentation/record/record_state.dart';
import 'package:calcrush/ui/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RecordScreen extends StatelessWidget {
  final RecordState state;
  final int totalScore;

  const RecordScreen({
    required this.state,
    required this.totalScore,
    super.key,
  });

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
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          child: Column(
            children: [
              Expanded(
                child: state.record != null ? ListView(
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
                        totalScore.toString(),
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
                      level1: state.record!.addition.level1,
                      level2: state.record!.addition.level2,
                      level3: state.record!.addition.level3,
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
                      level1: state.record!.subtraction.level1,
                      level2: state.record!.subtraction.level2,
                      level3: state.record!.subtraction.level3,
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
                      level1: state.record!.multiplication.level1,
                      level2: state.record!.multiplication.level2,
                      level3: state.record!.multiplication.level3,
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
                      level1: state.record!.division.level1,
                      level2: state.record!.division.level2,
                      level3: state.record!.division.level3,
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
                      level1: state.record!.randomOperator.level1,
                      level2: state.record!.randomOperator.level2,
                      level3: state.record!.randomOperator.level3,
                    ),
                    const SizedBox(height: 8.0,),
                  ],
                ) : const Center(
                  child: Text(
                    'No records',
                  ),
                ),
              ),
            ],
          )
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

