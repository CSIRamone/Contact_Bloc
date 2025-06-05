part of 'contact_update_bloc.dart';

@freezed
class ContactUpdateState with _$ContactUpdateState {
  const factory ContactUpdateState.initial() = _ContactUpdateStateInitial;
  const factory ContactUpdateState.loading() = _ContactUpdateStateLoading;
  const factory ContactUpdateState.success() = _ContactUpdateStateSuccess;
  const factory ContactUpdateState.error({required String message}) =
      _ContactUpdateStateError;
}
