import 'package:cosmos/pages/home/logic/bloc/home_bloc.dart';
import 'package:cosmos/pages/home/logic/bloc/home_event.dart';
import 'package:cosmos/pages/home/logic/data/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class HomeProviders extends StatelessWidget {
  const HomeProviders({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      BlocProvider(create: (context) => GenreBloc(SliderRepository())..add(LoadGenres()))
    ], child: child,);
  }
}