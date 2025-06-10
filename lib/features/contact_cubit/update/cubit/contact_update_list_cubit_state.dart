part of 'contact_update_list_cubit.dart';

@freezed
class ContactUpdateListCubitState with _$ContactUpdateListCubitState {
  const factory ContactUpdateListCubitState.initial() = _Initial;
  const factory ContactUpdateListCubitState.loading() = _Loading;
  const factory ContactUpdateListCubitState.error({required String message}) = _Error;
  const factory ContactUpdateListCubitState.success() = _Success;
}