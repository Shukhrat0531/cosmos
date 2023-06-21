import 'package:equatable/equatable.dart';

import '../data/model/genre.dart';

abstract class GenreState {}

class GenresLoading extends GenreState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GenresSuccess extends GenreState {
  final List<Genre> genres;

  GenresSuccess({required this.genres});
}

class GenresError extends GenreState {
  final String? message;

  GenresError({required this.message});
}
