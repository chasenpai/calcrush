import 'package:calcrush/config/di_setup.dart';
import 'package:calcrush/config/router.dart';
import 'package:calcrush/data/entity/record_entity.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MobileAds.instance.initialize();
  diSetup();
  await Hive.initFlutter();
  Hive.registerAdapter<RecordEntity>(RecordEntityAdapter());
  Hive.registerAdapter<AdditionEntity>(AdditionEntityAdapter());
  Hive.registerAdapter<SubtractionEntity>(SubtractionEntityAdapter());
  Hive.registerAdapter<MultiplicationEntity>(MultiplicationEntityAdapter());
  Hive.registerAdapter<DivisionEntity>(DivisionEntityAdapter());
  Hive.registerAdapter<RandomOperatorEntity>(RandomOperatorEntityAdapter());
  await Hive.openBox('calcrush.db');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: 'Calcrush',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}