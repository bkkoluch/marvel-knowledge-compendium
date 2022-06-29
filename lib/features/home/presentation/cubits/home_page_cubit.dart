import 'package:bloc/bloc.dart';
import 'package:marvel_knowledge_compendium/features/home/presentation/cubits/home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageState.initial());

  Future<void> loadHomePageImages() async {
    emit(state.copyWith(status: HomePageStateStatus.loading));
  }
}
