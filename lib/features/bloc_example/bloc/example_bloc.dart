import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

part 'example_event.dart';
part 'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(ExampleInitialState()) {
    on<ExampleFindNameEvent>(_findNames);
    on<ExampleRemoveNameEvent>(_removeName);
    on<ExampleAddNameEvent>(_addName);
  }

  FutureOr<void> _findNames(
      ExampleFindNameEvent event, Emitter<ExampleState> emit) async {
    final names = ['John', 'Doe', 'Jane', 'Smith'];
    await Future.delayed(const Duration(seconds: 4));
    //final filteredNames = names.where((name) => name.contains(event.name)).toList();
    emit(ExampleDataState(names: names));
  }

  FutureOr<void> _removeName(
      ExampleRemoveNameEvent event, Emitter<ExampleState> emit) {
    final exampleState = state;
    if (exampleState is ExampleDataState) {
      final names = [...exampleState.names];
      names.retainWhere((element) => element != event.name);
      emit(ExampleDataState(names: names));
     // exampleState.names.remove(event.name);
      //emit(ExampleDataState(names: exampleState.names));
    }
  }

  FutureOr<void> _addName(ExampleAddNameEvent event, Emitter<ExampleState> emit) {
    final exampleState = state;
    if (exampleState is ExampleDataState) {
      final names = [...exampleState.names];
      names.add(event.name);
      emit(ExampleDataState(names: names));
    }
  }
}
