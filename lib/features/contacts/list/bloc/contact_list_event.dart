part of 'contact_list_bloc.dart';

@freezed
class ContactListEvent with _$ContactListEvent {
  const factory ContactListEvent.findAll() = _ContactListEventFindAll;
  const factory ContactListEvent.delete({required ContactModel model}) =
      _ContactListEventDelete;


}