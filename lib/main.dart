import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/core/routes/app_route.dart';
import 'package:mobile_assessment_flutter/core/theme/shipify_theme.dart';
import 'package:mobile_assessment_flutter/features/registration/screens/choose_user_type_screen.dart';

void main() {
  runApp(const ShipifyApp());
}

class ShipifyApp extends StatelessWidget {
  const ShipifyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shipify',
      debugShowCheckedModeBanner: false,
      theme: ShipifyTheme.theme,
      navigatorKey: AppRoute.navigatorKey,
      onGenerateRoute: AppRoute.generateRoute,
      home: const ChooseUserTypeScreen(),
    );
  }
}
