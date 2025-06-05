// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContactUpdateEvent {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String name, String email) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String name, String email)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String name, String email)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactUpdateEventUpdate value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactUpdateEventUpdate value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactUpdateEventUpdate value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ContactUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactUpdateEventCopyWith<ContactUpdateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactUpdateEventCopyWith<$Res> {
  factory $ContactUpdateEventCopyWith(
          ContactUpdateEvent value, $Res Function(ContactUpdateEvent) then) =
      _$ContactUpdateEventCopyWithImpl<$Res, ContactUpdateEvent>;
  @useResult
  $Res call({int id, String name, String email});
}

/// @nodoc
class _$ContactUpdateEventCopyWithImpl<$Res, $Val extends ContactUpdateEvent>
    implements $ContactUpdateEventCopyWith<$Res> {
  _$ContactUpdateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactUpdateEventUpdateImplCopyWith<$Res>
    implements $ContactUpdateEventCopyWith<$Res> {
  factory _$$ContactUpdateEventUpdateImplCopyWith(
          _$ContactUpdateEventUpdateImpl value,
          $Res Function(_$ContactUpdateEventUpdateImpl) then) =
      __$$ContactUpdateEventUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String email});
}

/// @nodoc
class __$$ContactUpdateEventUpdateImplCopyWithImpl<$Res>
    extends _$ContactUpdateEventCopyWithImpl<$Res,
        _$ContactUpdateEventUpdateImpl>
    implements _$$ContactUpdateEventUpdateImplCopyWith<$Res> {
  __$$ContactUpdateEventUpdateImplCopyWithImpl(
      _$ContactUpdateEventUpdateImpl _value,
      $Res Function(_$ContactUpdateEventUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$ContactUpdateEventUpdateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContactUpdateEventUpdateImpl implements _ContactUpdateEventUpdate {
  const _$ContactUpdateEventUpdateImpl(
      {required this.id, required this.name, required this.email});

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'ContactUpdateEvent.update(id: $id, name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactUpdateEventUpdateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, email);

  /// Create a copy of ContactUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactUpdateEventUpdateImplCopyWith<_$ContactUpdateEventUpdateImpl>
      get copyWith => __$$ContactUpdateEventUpdateImplCopyWithImpl<
          _$ContactUpdateEventUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String name, String email) update,
  }) {
    return update(id, name, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String name, String email)? update,
  }) {
    return update?.call(id, name, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String name, String email)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(id, name, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactUpdateEventUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactUpdateEventUpdate value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactUpdateEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _ContactUpdateEventUpdate implements ContactUpdateEvent {
  const factory _ContactUpdateEventUpdate(
      {required final int id,
      required final String name,
      required final String email}) = _$ContactUpdateEventUpdateImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;

  /// Create a copy of ContactUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactUpdateEventUpdateImplCopyWith<_$ContactUpdateEventUpdateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactUpdateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactUpdateStateInitial value) initial,
    required TResult Function(_ContactUpdateStateLoading value) loading,
    required TResult Function(_ContactUpdateStateSuccess value) success,
    required TResult Function(_ContactUpdateStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactUpdateStateInitial value)? initial,
    TResult? Function(_ContactUpdateStateLoading value)? loading,
    TResult? Function(_ContactUpdateStateSuccess value)? success,
    TResult? Function(_ContactUpdateStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactUpdateStateInitial value)? initial,
    TResult Function(_ContactUpdateStateLoading value)? loading,
    TResult Function(_ContactUpdateStateSuccess value)? success,
    TResult Function(_ContactUpdateStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactUpdateStateCopyWith<$Res> {
  factory $ContactUpdateStateCopyWith(
          ContactUpdateState value, $Res Function(ContactUpdateState) then) =
      _$ContactUpdateStateCopyWithImpl<$Res, ContactUpdateState>;
}

/// @nodoc
class _$ContactUpdateStateCopyWithImpl<$Res, $Val extends ContactUpdateState>
    implements $ContactUpdateStateCopyWith<$Res> {
  _$ContactUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactUpdateState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ContactUpdateStateInitialImplCopyWith<$Res> {
  factory _$$ContactUpdateStateInitialImplCopyWith(
          _$ContactUpdateStateInitialImpl value,
          $Res Function(_$ContactUpdateStateInitialImpl) then) =
      __$$ContactUpdateStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactUpdateStateInitialImplCopyWithImpl<$Res>
    extends _$ContactUpdateStateCopyWithImpl<$Res,
        _$ContactUpdateStateInitialImpl>
    implements _$$ContactUpdateStateInitialImplCopyWith<$Res> {
  __$$ContactUpdateStateInitialImplCopyWithImpl(
      _$ContactUpdateStateInitialImpl _value,
      $Res Function(_$ContactUpdateStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactUpdateState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ContactUpdateStateInitialImpl implements _ContactUpdateStateInitial {
  const _$ContactUpdateStateInitialImpl();

  @override
  String toString() {
    return 'ContactUpdateState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactUpdateStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactUpdateStateInitial value) initial,
    required TResult Function(_ContactUpdateStateLoading value) loading,
    required TResult Function(_ContactUpdateStateSuccess value) success,
    required TResult Function(_ContactUpdateStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactUpdateStateInitial value)? initial,
    TResult? Function(_ContactUpdateStateLoading value)? loading,
    TResult? Function(_ContactUpdateStateSuccess value)? success,
    TResult? Function(_ContactUpdateStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactUpdateStateInitial value)? initial,
    TResult Function(_ContactUpdateStateLoading value)? loading,
    TResult Function(_ContactUpdateStateSuccess value)? success,
    TResult Function(_ContactUpdateStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ContactUpdateStateInitial implements ContactUpdateState {
  const factory _ContactUpdateStateInitial() = _$ContactUpdateStateInitialImpl;
}

/// @nodoc
abstract class _$$ContactUpdateStateLoadingImplCopyWith<$Res> {
  factory _$$ContactUpdateStateLoadingImplCopyWith(
          _$ContactUpdateStateLoadingImpl value,
          $Res Function(_$ContactUpdateStateLoadingImpl) then) =
      __$$ContactUpdateStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactUpdateStateLoadingImplCopyWithImpl<$Res>
    extends _$ContactUpdateStateCopyWithImpl<$Res,
        _$ContactUpdateStateLoadingImpl>
    implements _$$ContactUpdateStateLoadingImplCopyWith<$Res> {
  __$$ContactUpdateStateLoadingImplCopyWithImpl(
      _$ContactUpdateStateLoadingImpl _value,
      $Res Function(_$ContactUpdateStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactUpdateState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ContactUpdateStateLoadingImpl implements _ContactUpdateStateLoading {
  const _$ContactUpdateStateLoadingImpl();

  @override
  String toString() {
    return 'ContactUpdateState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactUpdateStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactUpdateStateInitial value) initial,
    required TResult Function(_ContactUpdateStateLoading value) loading,
    required TResult Function(_ContactUpdateStateSuccess value) success,
    required TResult Function(_ContactUpdateStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactUpdateStateInitial value)? initial,
    TResult? Function(_ContactUpdateStateLoading value)? loading,
    TResult? Function(_ContactUpdateStateSuccess value)? success,
    TResult? Function(_ContactUpdateStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactUpdateStateInitial value)? initial,
    TResult Function(_ContactUpdateStateLoading value)? loading,
    TResult Function(_ContactUpdateStateSuccess value)? success,
    TResult Function(_ContactUpdateStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ContactUpdateStateLoading implements ContactUpdateState {
  const factory _ContactUpdateStateLoading() = _$ContactUpdateStateLoadingImpl;
}

/// @nodoc
abstract class _$$ContactUpdateStateSuccessImplCopyWith<$Res> {
  factory _$$ContactUpdateStateSuccessImplCopyWith(
          _$ContactUpdateStateSuccessImpl value,
          $Res Function(_$ContactUpdateStateSuccessImpl) then) =
      __$$ContactUpdateStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactUpdateStateSuccessImplCopyWithImpl<$Res>
    extends _$ContactUpdateStateCopyWithImpl<$Res,
        _$ContactUpdateStateSuccessImpl>
    implements _$$ContactUpdateStateSuccessImplCopyWith<$Res> {
  __$$ContactUpdateStateSuccessImplCopyWithImpl(
      _$ContactUpdateStateSuccessImpl _value,
      $Res Function(_$ContactUpdateStateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactUpdateState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ContactUpdateStateSuccessImpl implements _ContactUpdateStateSuccess {
  const _$ContactUpdateStateSuccessImpl();

  @override
  String toString() {
    return 'ContactUpdateState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactUpdateStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactUpdateStateInitial value) initial,
    required TResult Function(_ContactUpdateStateLoading value) loading,
    required TResult Function(_ContactUpdateStateSuccess value) success,
    required TResult Function(_ContactUpdateStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactUpdateStateInitial value)? initial,
    TResult? Function(_ContactUpdateStateLoading value)? loading,
    TResult? Function(_ContactUpdateStateSuccess value)? success,
    TResult? Function(_ContactUpdateStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactUpdateStateInitial value)? initial,
    TResult Function(_ContactUpdateStateLoading value)? loading,
    TResult Function(_ContactUpdateStateSuccess value)? success,
    TResult Function(_ContactUpdateStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ContactUpdateStateSuccess implements ContactUpdateState {
  const factory _ContactUpdateStateSuccess() = _$ContactUpdateStateSuccessImpl;
}

/// @nodoc
abstract class _$$ContactUpdateStateErrorImplCopyWith<$Res> {
  factory _$$ContactUpdateStateErrorImplCopyWith(
          _$ContactUpdateStateErrorImpl value,
          $Res Function(_$ContactUpdateStateErrorImpl) then) =
      __$$ContactUpdateStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ContactUpdateStateErrorImplCopyWithImpl<$Res>
    extends _$ContactUpdateStateCopyWithImpl<$Res,
        _$ContactUpdateStateErrorImpl>
    implements _$$ContactUpdateStateErrorImplCopyWith<$Res> {
  __$$ContactUpdateStateErrorImplCopyWithImpl(
      _$ContactUpdateStateErrorImpl _value,
      $Res Function(_$ContactUpdateStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ContactUpdateStateErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContactUpdateStateErrorImpl implements _ContactUpdateStateError {
  const _$ContactUpdateStateErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ContactUpdateState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactUpdateStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ContactUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactUpdateStateErrorImplCopyWith<_$ContactUpdateStateErrorImpl>
      get copyWith => __$$ContactUpdateStateErrorImplCopyWithImpl<
          _$ContactUpdateStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactUpdateStateInitial value) initial,
    required TResult Function(_ContactUpdateStateLoading value) loading,
    required TResult Function(_ContactUpdateStateSuccess value) success,
    required TResult Function(_ContactUpdateStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactUpdateStateInitial value)? initial,
    TResult? Function(_ContactUpdateStateLoading value)? loading,
    TResult? Function(_ContactUpdateStateSuccess value)? success,
    TResult? Function(_ContactUpdateStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactUpdateStateInitial value)? initial,
    TResult Function(_ContactUpdateStateLoading value)? loading,
    TResult Function(_ContactUpdateStateSuccess value)? success,
    TResult Function(_ContactUpdateStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ContactUpdateStateError implements ContactUpdateState {
  const factory _ContactUpdateStateError({required final String message}) =
      _$ContactUpdateStateErrorImpl;

  String get message;

  /// Create a copy of ContactUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactUpdateStateErrorImplCopyWith<_$ContactUpdateStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
