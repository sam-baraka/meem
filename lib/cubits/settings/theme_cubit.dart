import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeData> {
  ThemeCubit(ThemeData state) : super(ThemeData.light());

  changeTheme(bool value) {
    if (value == true) {
      emit(ThemeData.dark());
    } else if (value == false) {
      emit(ThemeData.light());
    }
  }

  @override
  ThemeData fromJson(Map<String, dynamic> json) => json['value'];

  @override
  Map<String, dynamic> toJson(ThemeData state) => {'value': state};
}
