// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserState {
  List<User>? get data => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  UserStatus? get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        empty,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        loading,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        loaded,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        empty,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loading,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loaded,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        empty,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loading,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loaded,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {List<User>? data, Gender? gender, UserStatus? status, String? error});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? gender = freezed,
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<User>? data, Gender? gender, UserStatus? status, String? error});
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? gender = freezed,
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_$EmptyImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EmptyImpl implements _Empty {
  const _$EmptyImpl(
      {final List<User>? data, this.gender, this.status, this.error})
      : _data = data;

  final List<User>? _data;
  @override
  List<User>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Gender? gender;
  @override
  final UserStatus? status;
  @override
  final String? error;

  @override
  String toString() {
    return 'UserState.empty(data: $data, gender: $gender, status: $status, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), gender, status, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      __$$EmptyImplCopyWithImpl<_$EmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        empty,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        loading,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        loaded,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        failure,
  }) {
    return empty(data, gender, status, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        empty,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loading,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loaded,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        failure,
  }) {
    return empty?.call(data, gender, status, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        empty,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loading,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loaded,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(data, gender, status, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements UserState {
  const factory _Empty(
      {final List<User>? data,
      final Gender? gender,
      final UserStatus? status,
      final String? error}) = _$EmptyImpl;

  @override
  List<User>? get data;
  @override
  Gender? get gender;
  @override
  UserStatus? get status;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<User>? data, Gender? gender, UserStatus? status, String? error});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? gender = freezed,
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_$LoadingImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(
      {final List<User>? data, this.gender, this.status, this.error})
      : _data = data;

  final List<User>? _data;
  @override
  List<User>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Gender? gender;
  @override
  final UserStatus? status;
  @override
  final String? error;

  @override
  String toString() {
    return 'UserState.loading(data: $data, gender: $gender, status: $status, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), gender, status, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        empty,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        loading,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        loaded,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        failure,
  }) {
    return loading(data, gender, status, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        empty,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loading,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loaded,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        failure,
  }) {
    return loading?.call(data, gender, status, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        empty,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loading,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loaded,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data, gender, status, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UserState {
  const factory _Loading(
      {final List<User>? data,
      final Gender? gender,
      final UserStatus? status,
      final String? error}) = _$LoadingImpl;

  @override
  List<User>? get data;
  @override
  Gender? get gender;
  @override
  UserStatus? get status;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<User>? data, Gender? gender, UserStatus? status, String? error});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? gender = freezed,
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_$LoadedImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {final List<User>? data, this.gender, this.status, this.error})
      : _data = data;

  final List<User>? _data;
  @override
  List<User>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Gender? gender;
  @override
  final UserStatus? status;
  @override
  final String? error;

  @override
  String toString() {
    return 'UserState.loaded(data: $data, gender: $gender, status: $status, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), gender, status, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        empty,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        loading,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        loaded,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        failure,
  }) {
    return loaded(data, gender, status, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        empty,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loading,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loaded,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        failure,
  }) {
    return loaded?.call(data, gender, status, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        empty,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loading,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loaded,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data, gender, status, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements UserState {
  const factory _Loaded(
      {final List<User>? data,
      final Gender? gender,
      final UserStatus? status,
      final String? error}) = _$LoadedImpl;

  @override
  List<User>? get data;
  @override
  Gender? get gender;
  @override
  UserStatus? get status;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<User>? data, Gender? gender, UserStatus? status, String? error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? gender = freezed,
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_$FailureImpl(
      freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus?,
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(
      final List<User>? data, this.gender, this.status, this.error)
      : _data = data;

  final List<User>? _data;
  @override
  List<User>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Gender? gender;
  @override
  final UserStatus? status;
  @override
  final String? error;

  @override
  String toString() {
    return 'UserState.failure(data: $data, gender: $gender, status: $status, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), gender, status, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        empty,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        loading,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        loaded,
    required TResult Function(
            List<User>? data, Gender? gender, UserStatus? status, String? error)
        failure,
  }) {
    return failure(data, gender, status, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        empty,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loading,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loaded,
    TResult? Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        failure,
  }) {
    return failure?.call(data, gender, status, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        empty,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loading,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        loaded,
    TResult Function(List<User>? data, Gender? gender, UserStatus? status,
            String? error)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(data, gender, status, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements UserState {
  const factory _Failure(final List<User>? data, final Gender? gender,
      final UserStatus? status, final String? error) = _$FailureImpl;

  @override
  List<User>? get data;
  @override
  Gender? get gender;
  @override
  UserStatus? get status;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
