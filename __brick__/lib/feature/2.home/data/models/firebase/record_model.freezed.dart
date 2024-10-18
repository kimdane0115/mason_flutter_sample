// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecordModel _$RecordModelFromJson(Map<String, dynamic> json) {
  return _RecordModel.fromJson(json);
}

/// @nodoc
mixin _$RecordModel {
  Map<String, dynamic> get game => throw _privateConstructorUsedError;
  Map<String, dynamic> get goal => throw _privateConstructorUsedError;
  Map<String, dynamic> get assist => throw _privateConstructorUsedError;
  Map<String, dynamic> get mom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordModelCopyWith<RecordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordModelCopyWith<$Res> {
  factory $RecordModelCopyWith(
          RecordModel value, $Res Function(RecordModel) then) =
      _$RecordModelCopyWithImpl<$Res, RecordModel>;
  @useResult
  $Res call(
      {Map<String, dynamic> game,
      Map<String, dynamic> goal,
      Map<String, dynamic> assist,
      Map<String, dynamic> mom});
}

/// @nodoc
class _$RecordModelCopyWithImpl<$Res, $Val extends RecordModel>
    implements $RecordModelCopyWith<$Res> {
  _$RecordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
    Object? goal = null,
    Object? assist = null,
    Object? mom = null,
  }) {
    return _then(_value.copyWith(
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      assist: null == assist
          ? _value.assist
          : assist // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      mom: null == mom
          ? _value.mom
          : mom // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordModelImplCopyWith<$Res>
    implements $RecordModelCopyWith<$Res> {
  factory _$$RecordModelImplCopyWith(
          _$RecordModelImpl value, $Res Function(_$RecordModelImpl) then) =
      __$$RecordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> game,
      Map<String, dynamic> goal,
      Map<String, dynamic> assist,
      Map<String, dynamic> mom});
}

/// @nodoc
class __$$RecordModelImplCopyWithImpl<$Res>
    extends _$RecordModelCopyWithImpl<$Res, _$RecordModelImpl>
    implements _$$RecordModelImplCopyWith<$Res> {
  __$$RecordModelImplCopyWithImpl(
      _$RecordModelImpl _value, $Res Function(_$RecordModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
    Object? goal = null,
    Object? assist = null,
    Object? mom = null,
  }) {
    return _then(_$RecordModelImpl(
      game: null == game
          ? _value._game
          : game // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      goal: null == goal
          ? _value._goal
          : goal // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      assist: null == assist
          ? _value._assist
          : assist // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      mom: null == mom
          ? _value._mom
          : mom // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$RecordModelImpl implements _RecordModel {
  _$RecordModelImpl(
      {required final Map<String, dynamic> game,
      required final Map<String, dynamic> goal,
      required final Map<String, dynamic> assist,
      required final Map<String, dynamic> mom})
      : _game = game,
        _goal = goal,
        _assist = assist,
        _mom = mom;

  factory _$RecordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordModelImplFromJson(json);

  final Map<String, dynamic> _game;
  @override
  Map<String, dynamic> get game {
    if (_game is EqualUnmodifiableMapView) return _game;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_game);
  }

  final Map<String, dynamic> _goal;
  @override
  Map<String, dynamic> get goal {
    if (_goal is EqualUnmodifiableMapView) return _goal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_goal);
  }

  final Map<String, dynamic> _assist;
  @override
  Map<String, dynamic> get assist {
    if (_assist is EqualUnmodifiableMapView) return _assist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_assist);
  }

  final Map<String, dynamic> _mom;
  @override
  Map<String, dynamic> get mom {
    if (_mom is EqualUnmodifiableMapView) return _mom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_mom);
  }

  @override
  String toString() {
    return 'RecordModel(game: $game, goal: $goal, assist: $assist, mom: $mom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordModelImpl &&
            const DeepCollectionEquality().equals(other._game, _game) &&
            const DeepCollectionEquality().equals(other._goal, _goal) &&
            const DeepCollectionEquality().equals(other._assist, _assist) &&
            const DeepCollectionEquality().equals(other._mom, _mom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_game),
      const DeepCollectionEquality().hash(_goal),
      const DeepCollectionEquality().hash(_assist),
      const DeepCollectionEquality().hash(_mom));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordModelImplCopyWith<_$RecordModelImpl> get copyWith =>
      __$$RecordModelImplCopyWithImpl<_$RecordModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordModelImplToJson(
      this,
    );
  }
}

abstract class _RecordModel implements RecordModel {
  factory _RecordModel(
      {required final Map<String, dynamic> game,
      required final Map<String, dynamic> goal,
      required final Map<String, dynamic> assist,
      required final Map<String, dynamic> mom}) = _$RecordModelImpl;

  factory _RecordModel.fromJson(Map<String, dynamic> json) =
      _$RecordModelImpl.fromJson;

  @override
  Map<String, dynamic> get game;
  @override
  Map<String, dynamic> get goal;
  @override
  Map<String, dynamic> get assist;
  @override
  Map<String, dynamic> get mom;
  @override
  @JsonKey(ignore: true)
  _$$RecordModelImplCopyWith<_$RecordModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
