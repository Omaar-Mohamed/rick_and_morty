import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../data/repo/home_repo.dart';
import 'home_state.dart';


class HomeCubit extends Cubit<HomeState> {
  HomeRepo _homeRepo;
  HomeCubit (this._homeRepo) : super(HomeState.initial());

  void emitCharStates() async {
    emit(HomeState.loading());
    final allCharResponseModel = await _homeRepo.getAllCharacters();
    allCharResponseModel.when(
      success: (allCharResponseModel) {
        emit(HomeState.success(allCharResponseModel));
      },
      error: (message) {
        emit(HomeState.error(message));
      }
    );
  }
}
