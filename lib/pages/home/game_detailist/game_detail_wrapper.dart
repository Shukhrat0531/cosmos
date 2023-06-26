



import 'package:cosmos/pages/home/game_detailist/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../dependencies/getIt.dart';

class GameBlocWrapper extends StatelessWidget {
  const GameBlocWrapper({super.key, required this.child, required this.event});
  final Widget child;
  final GameEvent event;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GameBloc>()..add(event),
      child: child,
    );
  }
}
