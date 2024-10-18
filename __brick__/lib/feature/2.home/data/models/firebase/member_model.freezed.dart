// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemberModel _$MemberModelFromJson(Map<String, dynamic> json) {
  return _MemberModel.fromJson(json);
}

/// @nodoc
mixin _$MemberModel {
  Map<String, dynamic> get memberName => throw _privateConstructorUsedError;
  Map<String, String> get memberNumber => throw _privateConstructorUsedError;
  Map<String, dynamic> get memberId => throw _privateConstructorUsedError;
  Map<String, dynamic> get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberModelCopyWith<MemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberModelCopyWith<$Res> {
  factory $MemberModelCopyWith(
          MemberModel value, $Res Function(MemberModel) then) =
      _$MemberModelCopyWithImpl<$Res, MemberModel>;
  @useResult
  $Res call(
      {Map<String, dynamic> memberName,
      Map<String, String> memberNumber,
      Map<String, dynamic> memberId,
      Map<String, dynamic> phone});
}

/// @nodoc
class _$MemberModelCopyWithImpl<$Res, $Val extends MemberModel>
    implements $MemberModelCopyWith<$Res> {
  _$MemberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberName = null,
    Object? memberNumber = null,
    Object? memberId = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      memberName: null == memberName
          ? _value.memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      memberNumber: null == memberNumber
          ? _value.memberNumber
          : memberNumber // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberModelImplCopyWith<$Res>
    implements $MemberModelCopyWith<$Res> {
  factory _$$MemberModelImplCopyWith(
          _$MemberModelImpl value, $Res Function(_$MemberModelImpl) then) =
      __$$MemberModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> memberName,
      Map<String, String> memberNumber,
      Map<String, dynamic> memberId,
      Map<String, dynamic> phone});
}

/// @nodoc
class __$$MemberModelImplCopyWithImpl<$Res>
    extends _$MemberModelCopyWithImpl<$Res, _$MemberModelImpl>
    implements _$$MemberModelImplCopyWith<$Res> {
  __$$MemberModelImplCopyWithImpl(
      _$MemberModelImpl _value, $Res Function(_$MemberModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberName = null,
    Object? memberNumber = null,
    Object? memberId = null,
    Object? phone = null,
  }) {
    return _then(_$MemberModelImpl(
      memberName: null == memberName
          ? _value._memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      memberNumber: null == memberNumber
          ? _value._memberNumber
          : memberNumber // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      memberId: null == memberId
          ? _value._memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      phone: null == phone
          ? _value._phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _$MemberModelImpl implements _MemberModel {
  _$MemberModelImpl(
      {required final Map<String, dynamic> memberName,
      required final Map<String, String> memberNumber,
      required final Map<String, dynamic> memberId,
      required final Map<String, dynamic> phone})
      : _memberName = memberName,
        _memberNumber = memberNumber,
        _memberId = memberId,
        _phone = phone;

  factory _$MemberModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberModelImplFromJson(json);

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

  @override
  String toString() {
    return 'MemberModel(memberName: $memberName, memberNumber: $memberNumber, memberId: $memberId, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberModelImpl &&
            const DeepCollectionEquality()
                .equals(other._memberName, _memberName) &&
            const DeepCollectionEquality()
                .equals(other._memberNumber, _memberNumber) &&
            const DeepCollectionEquality().equals(other._memberId, _memberId) &&
            const DeepCollectionEquality().equals(other._phone, _phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_memberName),
      const DeepCollectionEquality().hash(_memberNumber),
      const DeepCollectionEquality().hash(_memberId),
      const DeepCollectionEquality().hash(_phone));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberModelImplCopyWith<_$MemberModelImpl> get copyWith =>
      __$$MemberModelImplCopyWithImpl<_$MemberModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberModelImplToJson(
      this,
    );
  }
}

abstract class _MemberModel implements MemberModel {
  factory _MemberModel(
      {required final Map<String, dynamic> memberName,
      required final Map<String, String> memberNumber,
      required final Map<String, dynamic> memberId,
      required final Map<String, dynamic> phone}) = _$MemberModelImpl;

  factory _MemberModel.fromJson(Map<String, dynamic> json) =
      _$MemberModelImpl.fromJson;

  @override
  Map<String, dynamic> get memberName;
  @override
  Map<String, String> get memberNumber;
  @override
  Map<String, dynamic> get memberId;
  @override
  Map<String, dynamic> get phone;
  @override
  @JsonKey(ignore: true)
  _$$MemberModelImplCopyWith<_$MemberModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
