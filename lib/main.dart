import 'package:flutter/material.dart';
import 'package:foodapp/providers/auth.dart';
import 'package:foodapp/screens/home.dart';
import 'package:foodapp/screens/landing_page.dart';
import 'package:foodapp/widgets/loading.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider.value(value: AuthProvider.initialize())
  ],
  child: MaterialApp(
    title: 'Food Delivery Application',
    theme: ThemeData(
      primarySwatch: Colors.amber,
      accentColor: Colors.black,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    debugShowCheckedModeBanner: false,
    home: ScreensController(),
  ),));
}

class ScreensController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context);
    switch(auth.status) {
      case Status.Uninitialized:
        return Loading();
      case Status.Unauthenticated:
      case Status.Authenticating:
        return LandingPage();
      case Status.Authenticated:
        return Home();
      default:
        return LandingPage();
    }
  }
}