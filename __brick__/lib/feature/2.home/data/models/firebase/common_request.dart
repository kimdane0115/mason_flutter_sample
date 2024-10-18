// import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'common_request.freezed.dart';
part 'common_request.g.dart';

// @JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
// class CommonRequest<T> {
//   // final String? name;
//   final T? fields;
//   CommonRequest({
//     // this.name,
//     this.fields,
//   });

//   // Interesting bits here → ----------------------------------- ↓ ↓
//   factory CommonRequest.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
//       _$CommonRequestFromJson<T>(json, fromJsonT);

//   // And here → ------------- ↓ ↓
//   Map<String, dynamic> toJson(Object Function(T) toJsonT) => _$CommonRequestToJson<T>(this, toJsonT);
// }

@freezed
@JsonSerializable(genericArgumentFactories: true)
class CommonRequest<T> with _$CommonRequest<T> {
  const CommonRequest._();

  const factory CommonRequest({
    // required int iconCodePoint,
    T? fields,
    // required String name,
  // }) = _CommonRequest<T>;
  }) = _CommonRequest;

  //It only works with block bodies and not with expression bodies
  //I don't know why
  factory CommonRequest.fromJson(
      Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
    return _$CommonRequestFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) {
    return _$CommonRequestToJson<T>(this, toJsonT);
  }
}