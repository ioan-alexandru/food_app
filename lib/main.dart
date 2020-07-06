import 'package:flutter/material.dart';
import 'package:foodapp/providers/category.dart';
import 'package:foodapp/providers/product.dart';
import 'package:foodapp/providers/restaurant.dart';
import 'package:foodapp/providers/user.dart';
import 'package:foodapp/screens/home.dart';
import 'package:foodapp/screens/landing_page.dart';
import 'package:foodapp/widgets/loading.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider.value(value: UserProvider.initialize()),
    ChangeNotifierProvider.value(value: CategoryProvider.initialize()),
    ChangeNotifierProvider.value(value: RestaurantProvider.initialize()),
    ChangeNotifierProvider.value(value: ProductProvider.initialize()),
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
    final auth = Provider.of<UserProvider>(context);
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