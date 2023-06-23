import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/model/genre.dart';
import '../data/repository/repository.dart';
import 'home_event.dart';
import 'home_state.dart';

class GenreBloc extends Bloc<GenreEvent, GenreState> {
  final SliderRepository _sliderRepository;
 

  GenreBloc(this._sliderRepository, )
      : super(GenresLoading()) {
    on<LoadGenres>((event, emit) async {
      emit(GenresLoading());
      try {
        List<Genre> result = await _sliderRepository.getSliders();
        List<Genre> arSlider = await _sliderRepository.getCategory();
        List<SetModel> sets = await _sliderRepository.getSets();
        emit(GenresSuccess(genres: result, arSliders: arSlider,sets: sets));
      } on DioException catch (e) {
        print('ERROR: $e'); // выводит больше информации об ошибке
        emit(GenresError(message: e.message));
      }
      ;
     
    });
  }
}
