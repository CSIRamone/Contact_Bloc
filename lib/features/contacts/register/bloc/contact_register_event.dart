part of 'contact_register_bloc.dart';

@freezed
class ContactRegisterEvent with _$ContactRegisterEvent {
  
  const factory ContactRegisterEvent.register({
    required String name,  
    required String email,
  }) = _ContactRegisterEventRegister;

  /*const factory ContactRegisterEvent.update({
    required String id,
    required String name,
    required String phone,
    required String email,
  }) = _ContactRegisterEventUpdate;

  const factory ContactRegisterEvent.delete({required String id}) =
      _ContactRegisterEventDelete;*/
}