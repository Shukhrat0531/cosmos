
import '../data/model/genre.dart';

abstract class GenreState {}

class GenresLoading extends GenreState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GenresSuccess extends GenreState {
  final List<Genre> genres;
  final List<Genre> arSliders;
  final List<SetModel> sets;

  GenresSuccess({required this.genres,required this.arSliders,required this.sets});

}

class GenresError extends GenreState {
  final String? message;

  GenresError({required this.message});
}

class ArSlidesLoading extends GenreState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

