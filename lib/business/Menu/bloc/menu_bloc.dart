import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:internet_shop/data/MenuModel.dart';

part 'menu_event.dart';
part 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  Response? response;
  MenuBloc() : super(MenuInitial()) {
    on<GetMenu>((event, emit) async {
      print('get menu');
      response = await Dio().get(
          'http://localhost:8080/v1/categories_by_placeid',
          queryParameters: {"place_id": 1});
      print(MenuModel.fromJson(response!.data));

      emit(RestorauntMenu(await response!));
    });
  }
}
