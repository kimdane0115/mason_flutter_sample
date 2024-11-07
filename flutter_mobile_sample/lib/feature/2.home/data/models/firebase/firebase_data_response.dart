import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_data_response.freezed.dart';
part 'firebase_data_response.g.dart';

@freezed
@JsonSerializable(genericArgumentFactories: true)
class FirebaseDataResponse<T> with _$FirebaseDataResponse<T> {
  const FirebaseDataResponse._();

  const factory FirebaseDataResponse({
    required final String name,
    final T? fields,
    required final String createTime,
    required final String updateTime,
  }) = _FirebaseDataResponse;

  factory FirebaseDataResponse.fromJson(
      Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
        print('firebase data json: $json');
    return _$FirebaseDataResponseFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) {
    return _$FirebaseDataResponseToJson<T>(this, toJsonT);
  }
}