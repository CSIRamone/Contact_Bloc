part of 'example_bloc.dart';
abstract class ExampleEvent {}

class ExampleFindNameEvent extends ExampleEvent {
  final String name;

  ExampleFindNameEvent({required this.name});
}
class ExampleAddNameEvent extends ExampleEvent{}

class ExampleRemoveNameEvent extends ExampleEvent{}