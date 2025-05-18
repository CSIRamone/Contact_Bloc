
part of 'example_bloc.dart';

@immutable
abstract class ExampleState {}

class ExampleInitialState extends ExampleState {}

class ExampleDataState extends ExampleState {
  final List<String> names;

  ExampleDataState({required this.names});
}