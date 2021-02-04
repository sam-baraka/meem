import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit(ThemeData state) : super(ThemeData.light());

  changeTheme(bool value) {
    if (value == true) {
      emit(ThemeData.dark());
    } else if (value == false) {
      emit(ThemeData.light());
    }
  }
}
