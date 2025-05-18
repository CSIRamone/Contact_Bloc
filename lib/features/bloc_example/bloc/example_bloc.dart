import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

part 'example_event.dart';
part 'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(ExampleInitialState()){
  on<ExampleFindNameEvent>(_findNames);

  }
  
  }
  

  FutureOr<void> _findNames(
      ExampleFindNameEvent event, Emitter<ExampleState> emit) async {
    final names = ['John', 'Doe', 'Jane', 'Smith'];
     await Future.delayed(const Duration(seconds: 4));
    //final filteredNames = names.where((name) => name.contains(event.name)).toList();
    emit(ExampleDataState(names: names));

   
  }
  



