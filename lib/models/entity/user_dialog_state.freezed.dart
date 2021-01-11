// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_dialog_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserDialogStateTearOff {
  const _$UserDialogStateTearOff();

// ignore: unused_element
  _UserDialogState call(
      {String name = '田中圭',
      String pronounce = 'たなかけい',
      String birthDay = '1994/10/03'}) {
    return _UserDialogState(
      name: name,
      pronounce: pronounce,
      birthDay: birthDay,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserDialogState = _$UserDialogStateTearOff();

/// @nodoc
mixin _$UserDialogState {
  String get name;
  String get pronounce;
  String get birthDay;

  $UserDialogStateCopyWith<UserDialogState> get copyWith;
}

/// @nodoc
abstract class $UserDialogStateCopyWith<$Res> {
  factory $UserDialogStateCopyWith(
          UserDialogState value, $Res Function(UserDialogState) then) =
      _$UserDialogStateCopyWithImpl<$Res>;
  $Res call({String name, String pronounce, String birthDay});
}

/// @nodoc
class _$UserDialogStateCopyWithImpl<$Res>
    implements $UserDialogStateCopyWith<$Res> {
  _$UserDialogStateCopyWithImpl(this._value, this._then);

  final UserDialogState _value;
  // ignore: unused_field
  final $Res Function(UserDialogState) _then;

  @override
  $Res call({
    Object name = freezed,
    Object pronounce = freezed,
    Object birthDay = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      pronounce: pronounce == freezed ? _value.pronounce : pronounce as String,
      birthDay: birthDay == freezed ? _value.birthDay : birthDay as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDialogStateCopyWith<$Res>
    implements $UserDialogStateCopyWith<$Res> {
  factory _$UserDialogStateCopyWith(
          _UserDialogState value, $Res Function(_UserDialogState) then) =
      __$UserDialogStateCopyWithImpl<$Res>;
  @override
  $Res call({String name, String pronounce, String birthDay});
}

/// @nodoc
class __$UserDialogStateCopyWithImpl<$Res>
    extends _$UserDialogStateCopyWithImpl<$Res>
    implements _$UserDialogStateCopyWith<$Res> {
  __$UserDialogStateCopyWithImpl(
      _UserDialogState _value, $Res Function(_UserDialogState) _then)
      : super(_value, (v) => _then(v as _UserDialogState));

  @override
  _UserDialogState get _value => super._value as _UserDialogState;

  @override
  $Res call({
    Object name = freezed,
    Object pronounce = freezed,
    Object birthDay = freezed,
  }) {
    return _then(_UserDialogState(
      name: name == freezed ? _value.name : name as String,
      pronounce: pronounce == freezed ? _value.pronounce : pronounce as String,
      birthDay: birthDay == freezed ? _value.birthDay : birthDay as String,
    ));
  }
}

/// @nodoc
class _$_UserDialogState extends _UserDialogState {
  _$_UserDialogState(
      {this.name = '田中圭',
      this.pronounce = 'たなかけい',
      this.birthDay = '1994/10/03'})
      : assert(name != null),
        assert(pronounce != null),
        assert(birthDay != null),
        super._();

  @JsonKey(defaultValue: '田中圭')
  @override
  final String name;
  @JsonKey(defaultValue: 'たなかけい')
  @override
  final String pronounce;
  @JsonKey(defaultValue: '1994/10/03')
  @override
  final String birthDay;

  @override
  String toString() {
    return 'UserDialogState(name: $name, pronounce: $pronounce, birthDay: $birthDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDialogState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.pronounce, pronounce) ||
                const DeepCollectionEquality()
                    .equals(other.pronounce, pronounce)) &&
            (identical(other.birthDay, birthDay) ||
                const DeepCollectionEquality()
                    .equals(other.birthDay, birthDay)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(pronounce) ^
      const DeepCollectionEquality().hash(birthDay);

  @override
  _$UserDialogStateCopyWith<_UserDialogState> get copyWith =>
      __$UserDialogStateCopyWithImpl<_UserDialogState>(this, _$identity);
}

abstract class _UserDialogState extends UserDialogState {
  _UserDialogState._() : super._();
  factory _UserDialogState({String name, String pronounce, String birthDay}) =
      _$_UserDialogState;

  @override
  String get name;
  @override
  String get pronounce;
  @override
  String get birthDay;
  @override
  _$UserDialogStateCopyWith<_UserDialogState> get copyWith;
}
