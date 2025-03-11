import '../../../index.dart';

final localRepositoryProvider = ChangeNotifierProvider<LocalRepository>(
  (ref) {
    return LocalRepository(ref);
  },
  name: 'localRepositoryProvider',
  dependencies: [sharedPreferencesProvider],
);

class LocalRepository extends ChangeNotifier {
  final Ref ref;

  LocalRepository(this.ref);

  /// 최초 실행 여부 불러오기
  bool getIsFirstStart() {
    var isFirstStart = ref.read(sharedPreferencesProvider).getBool(SharedPreferencesKey.isFirstStart.name) ?? true;
    return isFirstStart;
  }

  /// 최초 실행 여부 저장하기
  void setIsFirstStart() {
    ref.read(sharedPreferencesProvider).setBool(SharedPreferencesKey.isFirstStart.name, false);
  }

  /// 최초 실행 여부 저장하기
  void test() {
    ref.read(sharedPreferencesProvider).setBool(SharedPreferencesKey.isFirstStart.name, true);
  }

  /// 동의 여부
  bool getIsAgree() {
    var isAgree = ref.read(sharedPreferencesProvider).getBool(SharedPreferencesKey.isAgree.name) ?? false;
    return isAgree;
  }

  /// 최초 실행 여부 저장하기
  void setIsAgree() {
    ref.read(sharedPreferencesProvider).setBool(SharedPreferencesKey.isAgree.name, true);
  }

  /// 토큰정보 불러오기
  String? getAccessToken() {
    var accessToken = ref.read(sharedPreferencesProvider).getString(SharedPreferencesKey.accessToken.name);
    return accessToken;
  }

  /// 토큰정보 저장
  void setAccessToken(String token) {
    ref.read(sharedPreferencesProvider).setString(SharedPreferencesKey.accessToken.name, token);
    notifyListeners();
  }

  /// 토큰정보 초기화
  void clearAccessToken() {
    ref.read(sharedPreferencesProvider).remove(SharedPreferencesKey.accessToken.name);
  }

  /// 리프레시 토큰정보 불러오기
  String? getRefreshToken() {
    var refreshToken = ref.read(sharedPreferencesProvider).getString(SharedPreferencesKey.refreshToken.name);
    return refreshToken;
  }

  /// 리프레시 토큰정보 저장
  void setRefreshToken(String token) {
    ref.read(sharedPreferencesProvider).setString(SharedPreferencesKey.refreshToken.name, token);
  }

  /// 리프레시 토큰정보 초기화
  void clearRefreshToken() {
    ref.read(sharedPreferencesProvider).remove(SharedPreferencesKey.refreshToken.name);
  }

  void setUUID(String uuid) {
    ref.read(sharedPreferencesProvider).setString(SharedPreferencesKey.uuid.name, uuid);
  }

  String? getUUID() {
    var uuid = ref.read(sharedPreferencesProvider).getString(SharedPreferencesKey.uuid.name);
    return uuid;
  }

  Future<void> clearAllSharedPreferences() async {
    ref.read(sharedPreferencesProvider).clear(); // 저장된 모든 데이터 삭제
  }
}
