import 'package:hydrated_bloc/hydrated_bloc.dart';

class TabCubit extends HydratedCubit<int> {
  TabCubit(int state) : super(0);
  changeTab({int index}) {
    emit(index);
  }

  @override
  int fromJson(Map<String, dynamic> json) => json['value'] as int;

  @override
  Map<String, int> toJson(int state) => {'value': state};
}
