import 'package:flutter/material.dart';
import 'package:rick_and_morty/home/ui/screens/home_screen.dart';

import 'core/di/di.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

void main() {
  setupGetIt();

  runApp( MyApp(appRouter: AppRouter()));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: HomeScreen(),
      initialRoute: Routes.home,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}

