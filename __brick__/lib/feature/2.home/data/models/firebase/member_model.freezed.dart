// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MemberModel {
  Map<String, dynamic> get memberName;
  Map<String, String> get memberNumber;
  Map<String, dynamic> get memberId;
  Map<String, dynamic> get phone;

  /// Create a copy of MemberModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MemberModelCopyWith<MemberModel> get copyWith =>
      _$MemberModelCopyWithImpl<MemberModel>(this as MemberModel, _$identity);

  /// Serializes this MemberModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MemberModel &&
            const DeepCollectionEquality()
                .equals(other.memberName, memberName) &&
            const DeepCollectionEquality()
                .equals(other.memberNumber, memberNumber) &&
            const DeepCollectionEquality().equals(other.memberId, memberId) &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(memberName),
      const DeepCollectionEquality().hash(memberNumber),
      const DeepCollectionEquality().hash(memberId),
      const DeepCollectionEquality().hash(phone));

  @override
  String toString() {
    return 'MemberModel(memberName: $memberName, memberNumber: $memberNumber, memberId: $memberId, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class $MemberModelCopyWith<$Res> {
  factory $MemberModelCopyWith(
          MemberModel value, $Res Function(MemberModel) _then) =
      _$MemberModelCopyWithImpl;
  @useResult
  $Res call(
      {Map<String, dynamic> memberName,
      Map<String, String> memberNumber,
      Map<String, dynamic> memberId,
      Map<String, dynamic> phone});
}

/// @nodoc
class _$MemberModelCopyWithImpl<$Res> implements $MemberModelCopyWith<$Res> {
  _$MemberModelCopyWithImpl(this._self, this._then);

  final MemberModel _self;
  final $Res Function(MemberModel) _then;

  /// Create a copy of MemberModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberName = null,
    Object? memberNumber = null,
    Object? memberId = null,
    Object? phone = null,
  }) {
    return _then(_self.copyWith(
      memberName: null == memberName
          ? _self.memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      memberNumber: null == memberNumber
          ? _self.memberNumber
          : memberNumber // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      memberId: null == memberId
          ? _self.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _MemberModel implements MemberModel {
  _MemberModel(
      {required final Map<String, dynamic> memberName,
      required final Map<String, String> memberNumber,
      required final Map<String, dynamic> memberId,
      required final Map<String, dynamic> phone})
      : _memberName = memberName,
        _memberNumber = memberNumber,
        _memberId = memberId,
        _phone = phone;
  factory _MemberModel.fromJson(Map<String, dynamic> json) =>
      _$MemberModelFromJson(json);

  final Map<String, dynamic> _memberName;
  @override
  Map<String, dynamic> get memberName {
    if (_memberName is EqualUnmodifiableMapView) return _memberName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_memberName);
  }

  final Map<String, String> _memberNumber;
  @override
  Map<String, String> get memberNumber {
    if (_memberNumber is EqualUnmodifiableMapView) return _memberNumber;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_memberNumber);
  }

  final Map<String, dynamic> _memberId;
  @override
  Map<String, dynamic> get memberId {
    if (_memberId is EqualUnmodifiableMapView) return _memberId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_memberId);
  }

  final Map<String, dynamic> _phone;
  @override
  Map<String, dynamic> get phone {
    if (_phone is EqualUnmodifiableMapView) return _phone;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_phone);
  }

  /// Create a copy of MemberModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MemberModelCopyWith<_MemberModel> get copyWith =>
      __$MemberModelCopyWithImpl<_MemberModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MemberModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MemberModel &&
            const DeepCollectionEquality()
                .equals(other._memberName, _memberName) &&
            const DeepCollectionEquality()
                .equals(other._memberNumber, _memberNumber) &&
            const DeepCollectionEquality().equals(other._memberId, _memberId) &&
            const DeepCollectionEquality().equals(other._phone, _phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_memberName),
      const DeepCollectionEquality().hash(_memberNumber),
      const DeepCollectionEquality().hash(_memberId),
      const DeepCollectionEquality().hash(_phone));

  @override
  String toString() {
    return 'MemberModel(memberName: $memberName, memberNumber: $memberNumber, memberId: $memberId, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class _$MemberModelCopyWith<$Res>
    implements $MemberModelCopyWith<$Res> {
  factory _$MemberModelCopyWith(
          _MemberModel value, $Res Function(_MemberModel) _then) =
      __$MemberModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> memberName,
      Map<String, String> memberNumber,
      Map<String, dynamic> memberId,
      Map<String, dynamic> phone});
}

/// @nodoc
class __$MemberModelCopyWithImpl<$Res> implements _$MemberModelCopyWith<$Res> {
  __$MemberModelCopyWithImpl(this._self, this._then);

  final _MemberModel _self;
  final $Res Function(_MemberModel) _then;

  /// Create a copy of MemberModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? memberName = null,
    Object? memberNumber = null,
    Object? memberId = null,
    Object? phone = null,
  }) {
    return _then(_MemberModel(
      memberName: null == memberName
          ? _self._memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      memberNumber: null == memberNumber
          ? _self._memberNumber
          : memberNumber // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      memberId: null == memberId
          ? _self._memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      phone: null == phone
          ? _self._phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

// dart format on
