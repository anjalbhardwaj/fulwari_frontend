import 'package:animations/animations.dart';
import 'package:flutter/widgets.dart';

class Routes {
  static const String splash = "splash";
  static const String home = "home";
  static const String search = "searchBrowse";
  static const String signup = "signup";
  static const String verifysignupemail = "verifysignupemail";
  static const String login = "login";
  static const String forgotresetpassword = "forgotresetpassword";
  static const String buyerseller = "buyerseller";

  static Route<T> fadeThrough<T>(RouteSettings settings, WidgetBuilder page,
      {int duration = 300}) {
    return PageRouteBuilder<T>(
      settings: settings,
      transitionDuration: Duration(milliseconds: duration),
      pageBuilder: (context, animation, secondaryAnimation) => page(context),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeScaleTransition(animation: animation, child: child);
      },
    );
  }
}
