import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pushp/controller/productsModel.dart';
import 'package:pushp/screens/signinsignup/login/forgotresetpassword.dart';
import 'package:responsive_framework/responsive_framework.dart';

import './controller/auth.dart';

import 'routes.dart';

import 'screens/home/homepage.dart';
import 'screens/searchBrowse.dart';
import 'screens/signinsignup/buyerSeller.dart';
import 'screens/signinsignup/login/login.dart';
import 'screens/signinsignup/signup/signup.dart';
import 'screens/signinsignup/signup/verifysignupemail.dart';
import 'screens/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print('Data of Main page is--->');
    print(Routes.splash);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthModel(),
        ),
      ],
      child: MaterialApp(
        builder: (context, widget) => ResponsiveWrapper.builder(
            BouncingScrollWrapper.builder(context, widget!),
            maxWidth: 1200,
            minWidth: 450,
            defaultScale: true,
            breakpoints: [
              const ResponsiveBreakpoint.resize(450, name: MOBILE),
              const ResponsiveBreakpoint.autoScale(800, name: TABLET),
              const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
              const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
              const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
            ],
            background: Container(color: const Color(0xFFF5F5F5))),
        initialRoute: Routes.splash,
        theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: 'Oswald',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        title: 'The Coldest Water',
        onGenerateRoute: (RouteSettings settings) {
          return Routes.fadeThrough(
            settings,
            (context) {
              switch (settings.name) {
                case Routes.splash:
                  return SplashScreen();
                case Routes.home:
                  // return const HomePage();
                  return ChangeNotifierProvider<ProductsModel>.value(
                    value: ProductsModel(),
                    child: HomePage(),
                  );
                case Routes.buyerseller:
                  return BuyerSeller();
                case Routes.signup:
                  return SignUp();
                case Routes.verifysignupemail:
                  return VerifySignupEmail();
                case Routes.login:
                  return Login();
                case Routes.forgotresetpassword:
                  return ForgotResetPassword();
                case Routes.search:
                  return const SearchBrowse();
                default:
                  return const SizedBox.shrink();
              }
            },
          );
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
