import 'package:calcrush/presentation/components/common_flexible_button.dart';
import 'package:calcrush/presentation/components/common_text_button.dart';
import 'package:calcrush/ui/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 60.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              child: Text(
                                'Calcrush',
                                style: TextStyle(
                                  fontSize: 36.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black87,
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
                      child: Text(
                        'Sharpen your mental math!',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black87,
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
    );
  }
}
