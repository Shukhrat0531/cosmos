


import 'package:cosmos/pages/home/sets_details/sets_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../dependencies/getIt.dart';

class ProductBlocWrapper extends StatelessWidget {
  const ProductBlocWrapper({super.key, required this.child, required this.id});
  final Widget child;
  final int id;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductBloc>()..add(GetDetails(id)),
      child: child,
    );
  }
}
