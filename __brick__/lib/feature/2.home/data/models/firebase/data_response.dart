import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_response.freezed.dart';
part 'data_response.g.dart';

@freezed
@JsonSerializable(genericArgumentFactories: true)
class DataResponse<T> with _$DataResponse<T> {
  const DataResponse._();

  const factory DataResponse({
    final List<T>? documents,
    // final String? statusMessage,
    // final int? statusCode,
  }) = _DataResponse;

  factory DataResponse.fromJson(
      Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
        print('json data_res: $json');
    return _$DataResponseFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) {
    return _$DataResponseToJson<T>(this, toJsonT);
  }
}