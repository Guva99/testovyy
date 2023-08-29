import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'runnable_state.freezed.dart';

typedef Runnable = FutureOr<void> Function();
typedef OnError = FutureOr<void> Function(Object error);

@freezed
class RunnableState with _$RunnableState {
  const factory RunnableState({
    required bool isRunning,
    required bool hasError,
    required Object? error,
    required bool isFoundedUser,
  }) = _RunnableState;
}

final runnableStateProvider = StateNotifierProvider<RunnableStateHolder, RunnableState>(
  (ref) => RunnableStateHolder(),
);

class RunnableStateHolder extends StateNotifier<RunnableState> {
  RunnableStateHolder()
      : super(
          const RunnableState(
            isRunning: false,
            hasError: false,
            error: false,
            isFoundedUser: true,
          ),
        );

  bool get hasError => state.hasError;

  bool get isRunning => state.isRunning;

  bool get isFoundedUser => state.isFoundedUser;

  Future<void> setIsFoundedUser(bool value) async {
    state = state.copyWith(
      isFoundedUser: value,
    );
  }

  void runCircular({required bool isRunning, Object? error}) {
    state = state.copyWith(isRunning: isRunning, error: error);
    print(error != null ? 'ERROR: $error' : '');
  }
}
