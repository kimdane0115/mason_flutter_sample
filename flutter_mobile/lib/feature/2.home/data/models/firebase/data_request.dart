import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_request.freezed.dart';
part 'data_request.g.dart';

// @Freezed(genericArgumentFactories: true)
// // @freezed
// class DataRequest<T> with _$DataRequest<T> {
//   @JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
//   factory DataRequest({
//     String? name,
//     required T fields,
//   }) = _DataRequest;

//   factory DataRequest.fromJson(
//           Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
//       _$DataRequestFromJson(json, fromJsonT);
// }


// @Freezed(equal: true)
// // @freezed
// class DataRequest<T> with _$DataRequest<T> {
//   @JsonSerializable(explicitToJson: true, genericArgumentFactories: true,)
//   const factory DataRequest.data(String? name, T? fields) = DataRequestData;
//   // factory DataRequest({
//   //   String? name,
//   //   T? fields,
//   // }) = _DataRequest;
//   // const factory DataRequest.error(String message) = DataRequestError;

//   factory DataRequest.fromJson(
//           Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
//       _$DataRequestFromJson(json, fromJsonT);
// }


// @Freezed(genericArgumentFactories: true, toJson: true,)
// @freezed
// @JsonSerializable(genericArgumentFactories: true)
// sealed class DataRequest<T> with _$DataRequest<T> {
//   const factory DataRequest.data(T data) = DataRequestData;
//   const factory DataRequest.error(String message) = DataRequestError;

//   factory DataRequest.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$DataRequestFromJson(json, fromJsonT);

//   Map<String, dynamic> toJson(Object Function(T value) toJsonT) {
//     return _$DataRequestToJson<T>(this, toJsonT);
//   }
// }

@freezed
@JsonSerializable(genericArgumentFactories: true)
class DataRequest<T> with _$DataRequest<T> {
  const DataRequest._();

  const factory DataRequest({
    // required int iconCodePoint,
    T? data,
    // required String name,
  }) = _DataRequest<T>;

  //It only works with block bodies and not with expression bodies
  //I don't know why
  factory DataRequest.fromJson(
      Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
    return _$DataRequestFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) {
    return _$DataRequestToJson<T>(this, toJsonT);
  }
}


// import 'package:firebase_test/feature/2.home/data/models/member_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'data_request.freezed.dart';
// part 'data_request.g.dart';

// @Freezed(toJson: true)
// class DataRequest with _$DataRequest {
//   @JsonSerializable(explicitToJson: true, createToJson: true)
//   factory DataRequest({
//     String? name,
//     MemberModel? fields,
//   }) = _DataRequest;

//   factory DataRequest.fromJson(Map<String, dynamic> json) => _$DataRequestFromJson(json);
//   Map<String, dynamic> toJson() => _$DataRequestToJson(this);
// }