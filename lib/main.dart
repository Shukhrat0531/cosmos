import 'package:cosmos/pages/home/logic/bloc/home_bloc.dart';
import 'package:cosmos/pages/home/logic/data/repository/repository.dart';
import 'package:cosmos/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'dependencies/getIt.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
  initGetIt();
  runApp(  
   MyApp()
  );
}
// BlocProvider(
//     child: MyApp(),
//     create: (context)=> GenresBloc()
   
//    )

class MyApp extends StatefulWidget {
  @override
  
  _MyAppState createState() => _MyAppState();
  // static void setLocale(BuildContext context, Locale newLocale) {
  //   _MyAppState? state = context.findAncestorRenderObjectOfType<_MyAppState>();
  //   state?.setLocale(newLocale);
  // }
}
 
class _MyAppState extends State<MyApp> {
  Locale? _locale;

  setLocale(Locale locale){
    setState(() {
      _locale =locale;
    });
  }
  
  final appRouter = FlutterRouter();
  @override
  Widget build(BuildContext context) {
      

    return LanguageProvider(
      data: this,
      child: MaterialApp.router(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales:AppLocalizations.supportedLocales,
        locale: _locale,
        title: 'COSMOS',
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
      ),
    );
  }
}

class LanguageProvider extends InheritedWidget {
  final _MyAppState data;

  LanguageProvider({
    Key? key,
    required Widget child,
    required this.data,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static _MyAppState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LanguageProvider>()!.data;
  }
}
