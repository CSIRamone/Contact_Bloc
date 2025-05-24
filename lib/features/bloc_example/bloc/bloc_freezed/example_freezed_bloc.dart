import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_freezed_state.dart';

part 'example_freezed_event.dart';

part 'example_freezed_bloc.freezed.dart';

class ExampleFreezedBloc
    extends Bloc<ExampleFreezedEvent, ExampleFreezedState> {
  ExampleFreezedBloc() : super(ExampleFreezedState.initial()) {
    on<_ExampleFreezedEventFindNames>(_findNames);
    on<_ExampleFreezedEventAddNames>(_addName);
    on<_ExampleFreezedEventRemoveName>(_removeName);
  }

  FutureOr<void> _findNames(_ExampleFreezedEventFindNames event,
      Emitter<ExampleFreezedState> emit) async {
    emit(ExampleFreezedState.loading());
    final names = ['John', 'Doe', 'Jane', 'Smith'];
    await Future.delayed(const Duration(seconds: 4));
    //final filteredNames = names.where((name) => name.contains(event.name)).toList();
    emit(ExampleFreezedState.data(names: names));
  }

  FutureOr<void> _removeName(
      _ExampleFreezedEventRemoveName event, Emitter<ExampleFreezedState> emit) {
    final names = state.maybeWhen(
      data: (names) => names,
      orElse: () => const <String>[],
    );

    final newNames = [...names];

    newNames.retainWhere((element) => element != event.name);

    emit(ExampleFreezedState.data(names: names));
  }

  FutureOr<void> _addName(_ExampleFreezedEventAddNames event,
      Emitter<ExampleFreezedState> emit) async {
    final names = state.maybeWhen(
      data: (names) => names,
      orElse: () => const <String>[],
    );

    emit(ExampleFreezedState.showBanner(names:names, message: 'Inserindo Novo Nome'));
    await Future.delayed(const Duration(seconds: 2));
    final newNames = [...names];
    print('addName -> newNames.add(event.name) ');
    newNames.add(event.name);
    print('names -> {$newNames}');

    emit(ExampleFreezedState.data(names: newNames));
  }
}
