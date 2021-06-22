import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Custom [BlocObserver] which observes all bloc and cubit instances.
class SimpleBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase cubit) {
    super.onCreate(cubit);
    debugPrint('onCreate -- cubit: ${cubit.runtimeType}');
  }

  @override
  void onChange(BlocBase cubit, Change change) {
    super.onChange(cubit, change);
    debugPrint('onChange -- cubit: ${cubit.runtimeType}, change: $change');
  }

  @override
  void onError(BlocBase cubit, Object error, StackTrace stackTrace) {
    debugPrint('onError -- cubit: ${cubit.runtimeType}, error: $error');
    super.onError(cubit, error, stackTrace);
  }

  @override
  void onClose(BlocBase cubit) {
    super.onClose(cubit);
    debugPrint('onClose -- cubit: ${cubit.runtimeType}');
  }
}
