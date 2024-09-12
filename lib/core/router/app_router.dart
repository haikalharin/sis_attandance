import 'package:sis_attendance/core/router/routes.dart';
import 'package:sis_attendance/screens/dashboard_page/screen/dashboard_screen.dart';
import 'package:sis_attendance/screens/login_page/screen/login_page.dart';
import 'package:sis_attendance/screens/user/user_list_screen.dart';
import 'package:flutter/material.dart';

import '../../screens/map_page/map_screen.dart';
import '../../screens/splashscreen_page/splashscreen_page.dart';
import '../../utils/remote_utils.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashscreenPage());
      case Routes.userList:
        return MaterialPageRoute(builder: (_) => const UserListScreen());
      case Routes.loginPage:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case Routes.dashboardScreen:
        return MaterialPageRoute(builder: (_) => const DashboardScreen());
 case Routes.mapScreen:
        return MaterialPageRoute(builder: (_) => MapScreen());
      // case Routes.detailCandidatePage:
      //   return MaterialPageRoute(
      //       builder: (_) => DetailCandidatePage(
      //             candidateModel: getCandidateModel(settings.arguments),
      //             isMyCandidate: getIsMyCandidate(settings.arguments),
      //           ));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }

  static Map<String, WidgetBuilder> _getCombinedRoutes() => {};

  static Map<String, WidgetBuilder> getAll() => _getCombinedRoutes();
}
