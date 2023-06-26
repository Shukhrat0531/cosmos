


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../dependencies/getIt.dart';
import '../../favorites/favorites_bloc.dart';

class FavoriteBlocWrapper extends StatelessWidget {
  const FavoriteBlocWrapper({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FavoriteBloc>(),
      child: child,
    );
  }
}
