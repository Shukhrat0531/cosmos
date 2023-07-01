import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../dependencies/getIt.dart';
import '../../cart/logic/cart_bloc.dart';

class ShowBlocWrapper extends StatelessWidget {
  final Widget child;

  const ShowBlocWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CartBloc>()..add(GetCartInfo()),
      child: child,
    );
  }
}
