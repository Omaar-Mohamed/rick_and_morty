import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/di/di.dart';
import 'package:rick_and_morty/core/routing/routes.dart';
import 'package:rick_and_morty/home/data/repo/home_repo.dart';
import 'package:rick_and_morty/home/logic/home_cubit.dart';

import '../../home/ui/screens/home_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>(),
            child: const HomeScreen(),
          ),
        );
      // case '/login':
      //   return MaterialPageRoute(builder: (_) => LoginScreen());
      // case '/register':
      //   return MaterialPageRoute(builder: (_) => RegisterScreen());
      // case '/profile':
      //   return MaterialPageRoute(builder: (_) => ProfileScreen());
      // case '/settings':
      //   return MaterialPageRoute(builder: (_) => SettingsScreen());
      default:
        return null;
    }
  }
}
