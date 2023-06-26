





import 'package:cosmos/pages/home/ar_details/ar_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../dependencies/getIt.dart';

class ArendBlocWrapper extends StatelessWidget {
  const ArendBlocWrapper({super.key, required this.child, required this.event});
  final Widget child;
  final ArendaEvent event;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ArendaBloc>()..add(event),
      child: child,
    );
  }
}
