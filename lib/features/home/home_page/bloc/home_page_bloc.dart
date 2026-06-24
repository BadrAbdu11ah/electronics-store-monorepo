import 'package:electronics_store/core/services/app_service.dart';
import 'package:electronics_store/data/model/categories_model.dart';
import 'package:electronics_store/data/model/items_model.dart';
import 'package:electronics_store/features/home/data/home_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final HomeData homeData;
  final AppService appService;
  HomePageBloc({required this.homeData, required this.appService})
    : super(const HomePageState()) {
    on<_Started>((event, emit) => _onStarted(emit));
    on<_LoadData>((event, emit) => _onLoadData(emit));
    on<_Logout>((event, emit) => _onLogout(emit));
  }

  Future<void> _onStarted(Emitter<HomePageState> emit) async {
    final lang = appService.sharedPreferences.getString('lang') ?? 'en';
    emit(state.copyWith(lang: lang));
    add(HomePageEvent.loadData());
  }

  Future<void> _onLoadData(Emitter<HomePageState> emit) async {
    emit(state.copyWith(status: HomePageStatus.loading()));

    final response = await homeData.getData();

    response.fold(
      (failure) {
        emit(
          state.copyWith(status: HomePageStatus.serverFailure(failure.message)),
        );
      },
      (data) {
        emit(
          state.copyWith(
            status: HomePageStatus.loaded(),
            categories: data['categories'] as List<CategoriesModel>,
            items: data['items'] as List<ItemsModel>,
          ),
        );
      },
    );
  }

  Future<void> _onLogout(Emitter<HomePageState> emit) async {
    emit(state.copyWith(status: HomePageStatus.loading()));
    await appService.sharedPreferences.setString("step", "1");
    emit(state.copyWith(status: HomePageStatus.loggedOut()));
  }
}
