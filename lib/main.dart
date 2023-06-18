import 'package:cosmos/routes/routes.gr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final appRouter = FlutterRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'COSMOS',
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
