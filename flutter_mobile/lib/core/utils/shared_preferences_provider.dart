import '../../../index.dart';

/// 내부 스토리지
final sharedPreferencesProvider = Provider<SharedPreferences>(
  (ref) => throw UnimplementedError(),
  name: 'sharedPreferencesProvider',
);

/// 스토리지 키 값
enum SharedPreferencesKey {
  /// bool 데이터
  isFirstStart,

  /// bool 데이터
  isFirstTodo,

  /// bool 데이터
  isFirstVoucher,

  isAgree,

  /// string 데이터
  accessToken,

  /// string 데이터
  refreshToken,

  /// int 데이터
  theme,

  /// string 데이터
  loginEmail,
  // bool 데이터
  checkSaveId,

  // User UUID
  uuid,
}
