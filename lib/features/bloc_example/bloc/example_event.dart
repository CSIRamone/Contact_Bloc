part of 'example_bloc.dart';
abstract class ExampleEvent {}

class ExampleFindNameEvent extends ExampleEvent {
  final String? name;

  ExampleFindNameEvent({this.name});
}
class ExampleAddNameEvent extends ExampleEvent{}

class ExampleRemoveNameEvent extends ExampleEvent{}