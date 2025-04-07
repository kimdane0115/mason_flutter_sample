// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecordModel {
  Map<String, dynamic> get game;
  Map<String, dynamic> get goal;
  Map<String, dynamic> get assist;
  Map<String, dynamic> get mom;

  /// Create a copy of RecordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RecordModelCopyWith<RecordModel> get copyWith =>
      _$RecordModelCopyWithImpl<RecordModel>(this as RecordModel, _$identity);

  /// Serializes this RecordModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecordModel &&
            const DeepCollectionEquality().equals(other.game, game) &&
            const DeepCollectionEquality().equals(other.goal, goal) &&
            const DeepCollectionEquality().equals(other.assist, assist) &&
            const DeepCollectionEquality().equals(other.mom, mom));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(game),
      const DeepCollectionEquality().hash(goal),
      const DeepCollectionEquality().hash(assist),
      const DeepCollectionEquality().hash(mom));

  @override
  String toString() {
    return 'RecordModel(game: $game, goal: $goal, assist: $assist, mom: $mom)';
  }
}

/// @nodoc
abstract mixin class $RecordModelCopyWith<$Res> {
  factory $RecordModelCopyWith(
          RecordModel value, $Res Function(RecordModel) _then) =
      _$RecordModelCopyWithImpl;
  @useResult
  $Res call(
      {Map<String, dynamic> game,
      Map<String, dynamic> goal,
      Map<String, dynamic> assist,
      Map<String, dynamic> mom});
}

/// @nodoc
class _$RecordModelCopyWithImpl<$Res> implements $RecordModelCopyWith<$Res> {
  _$RecordModelCopyWithImpl(this._self, this._then);

  final RecordModel _self;
  final $Res Function(RecordModel) _then;

  /// Create a copy of RecordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
    Object? goal = null,
    Object? assist = null,
    Object? mom = null,
  }) {
    return _then(_self.copyWith(
      game: null == game
          ? _self.game
          : game // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      goal: null == goal
          ? _self.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      assist: null == assist
          ? _self.assist
          : assist // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      mom: null == mom
          ? _self.mom
          : mom // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _RecordModel implements RecordModel {
  _RecordModel(
      {required final Map<String, dynamic> game,
      required final Map<String, dynamic> goal,
      required final Map<String, dynamic> assist,
      required final Map<String, dynamic> mom})
      : _game = game,
        _goal = goal,
        _assist = assist,
        _mom = mom;
  factory _RecordModel.fromJson(Map<String, dynamic> json) =>
      _$RecordModelFromJson(json);

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

  /// Create a copy of RecordModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RecordModelCopyWith<_RecordModel> get copyWith =>
      __$RecordModelCopyWithImpl<_RecordModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RecordModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecordModel &&
            const DeepCollectionEquality().equals(other._game, _game) &&
            const DeepCollectionEquality().equals(other._goal, _goal) &&
            const DeepCollectionEquality().equals(other._assist, _assist) &&
            const DeepCollectionEquality().equals(other._mom, _mom));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_game),
      const DeepCollectionEquality().hash(_goal),
      const DeepCollectionEquality().hash(_assist),
      const DeepCollectionEquality().hash(_mom));

  @override
  String toString() {
    return 'RecordModel(game: $game, goal: $goal, assist: $assist, mom: $mom)';
  }
}

/// @nodoc
abstract mixin class _$RecordModelCopyWith<$Res>
    implements $RecordModelCopyWith<$Res> {
  factory _$RecordModelCopyWith(
          _RecordModel value, $Res Function(_RecordModel) _then) =
      __$RecordModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> game,
      Map<String, dynamic> goal,
      Map<String, dynamic> assist,
      Map<String, dynamic> mom});
}

/// @nodoc
class __$RecordModelCopyWithImpl<$Res> implements _$RecordModelCopyWith<$Res> {
  __$RecordModelCopyWithImpl(this._self, this._then);

  final _RecordModel _self;
  final $Res Function(_RecordModel) _then;

  /// Create a copy of RecordModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? game = null,
    Object? goal = null,
    Object? assist = null,
    Object? mom = null,
  }) {
    return _then(_RecordModel(
      game: null == game
          ? _self._game
          : game // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      goal: null == goal
          ? _self._goal
          : goal // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      assist: null == assist
          ? _self._assist
          : assist // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      mom: null == mom
          ? _self._mom
          : mom // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

// dart format on
