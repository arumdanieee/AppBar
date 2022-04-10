import 'package:flutter/material.dart';
import 'package:navrouting/screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/profil':
        return MaterialPageRoute(builder: (_) => Profil());
      case '/portfolio':
        return MaterialPageRoute(builder: (_) => Portfolio());
      case '/contact':
        return MaterialPageRoute(builder: (_) => Contact());
      case '/setting':
        return MaterialPageRoute(builder: (_) => Setting());
      case '/gallery':
        return MaterialPageRoute(builder: (_) => Gallery());
      // return MaterialPageRoute(builder: (_) => AboutPage(args));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
