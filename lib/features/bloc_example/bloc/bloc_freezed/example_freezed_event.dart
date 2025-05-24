part of 'example_freezed_bloc.dart';

@freezed
class ExampleFreezedEvent with _$ExampleFreezedEvent {

  const factory ExampleFreezedEvent.findNames() = _ExampleFreezedEventFindNames;
  const factory ExampleFreezedEvent.addNames( String name ) = _ExampleFreezedEventAddNames;
  const factory ExampleFreezedEvent.removeName( String name ) = _ExampleFreezedEventRemoveName;

}