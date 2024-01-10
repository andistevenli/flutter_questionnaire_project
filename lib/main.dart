import 'package:flutter/material.dart';
import 'package:flutter_questionnaire_project/features/dashboard/dashboard_controller.dart';
import 'package:flutter_questionnaire_project/features/dashboard/dashboard_screen.dart';
import 'package:flutter_questionnaire_project/utils/constant/route.dart';
import 'package:flutter_questionnaire_project/utils/constant/text.dart';
import 'package:flutter_questionnaire_project/utils/key/navigator.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const FlutterQuestionnaireProject(),
  );
}

class FlutterQuestionnaireProject extends StatelessWidget {
  const FlutterQuestionnaireProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DashboardController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: projectName,
        theme: ThemeData.light(useMaterial3: true),
        navigatorKey: navigatorKey,
        initialRoute: dashboardRoute,
        routes: {
          dashboardRoute: (context) => const DashboardScreen(),
        },
      ),
    );
  }
}
