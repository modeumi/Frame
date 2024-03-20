import 'package:flutter/material.dart';
import 'package:frame/onboarding/onboarding.dart';
import 'package:frame/screen/mainpage.dart';
import 'package:frame/screen/research_post.dart';

import 'package:intl/date_symbol_data_local.dart';
import 'package:frame/provider/floating_controller.dart';
import 'package:provider/provider.dart';

void main() async {
  await initializeDateFormatting('ko-KR', null);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Floating_Controller()),
      ],
      child: MaterialApp(
        home: OnBoardingPage(),
      ),
    ),
  );
}
