part of 'contact_register_list_cubit.dart';

@freezed
class ContactRegisterListCubitState with _$ContactRegisterListCubitState {
  const factory ContactRegisterListCubitState.initial() = _Initial;
  const factory ContactRegisterListCubitState.loading() = _Loading;
  const factory ContactRegisterListCubitState.error({ required String message }) = _Error;
  const factory ContactRegisterListCubitState.success() = _Success;
}