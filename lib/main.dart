import 'package:arzan/core/provider/theme_provider.dart';
import 'package:arzan/core/views/home_view.dart';
import 'package:arzan/core/views/official_view.dart';
import 'package:arzan/core/views/screen_view.dart';
import 'package:arzan/core/views/search_view.dart';
import 'package:arzan/core/views/user_view.dart';
import 'package:arzan/ui/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/utils/drawer_controller.dart';

bool isDark = false;
List<ChangeNotifierProvider> providers = [
  ChangeNotifierProvider<MenuController>(create: (context) => MenuController()),
  ChangeNotifierProvider<ThemeProvider>(
      create: (context) => ThemeProvider(isDa: isDark)),
  ChangeNotifierProvider<ScreenChanger>(create: (context) => ScreenChanger()),
  ChangeNotifierProvider<HomeView>(create: (context) => HomeView()),
  ChangeNotifierProvider<SearchView>(create: (context) => SearchView()),
  ChangeNotifierProvider<UserView>(create: (context) => UserView()),
  ChangeNotifierProvider<OfficialUserView>(create: (context)=>OfficialUserView())
];
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();

  isDark = prefs.getBool('isDark') ?? false;
  runApp(MultiProvider(providers: providers, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'ARZAN',
      //theme: ThemeData(primarySwatch: Colors.green),
      theme: themeProvider.themeColor,
      home: const SplashPage(),
    );
  }
}
