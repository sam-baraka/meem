import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeData> {
  ThemeCubit(ThemeData state) : super(state);

  @override
  ThemeData fromJson(Map<String, dynamic> json) => json['value'];

  @override
  Map<String, dynamic> toJson(ThemeData state) => {'value': state};
}
