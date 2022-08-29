import 'package:bloc/bloc.dart';
import 'package:flutter_solid_test/data/repository/random_color_repository.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

//Home screen bloc
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<ChangeColorEvent>((event, emit) {
      final randomColorRepository = RandomColorRepository();
      final List<int> randoms = randomColorRepository.randomizeColor();
      emit(HomeColorChanged(r: randoms.first, g: randoms[1], b: randoms[2]));
    });
  }
}
