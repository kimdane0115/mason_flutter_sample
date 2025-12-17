
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../index.dart';

part 'sign_repository_provider.g.dart';

@riverpod
SupabaseSignApiService supabaseSignApiService (Ref ref) {
  return SupabaseSignApiServiceImpl();
}

@Riverpod(keepAlive: true)
SignRepository signRepository(Ref ref) {
  final signApiService = ref.read(supabaseSignApiServiceProvider);
  return SignRepositoryImpl(signApiService);
}

@riverpod
UserVerify userVerify(Ref ref) {
  final repository = ref.read(signRepositoryProvider);
  return UserVerify(repository);
}

@riverpod
AddProfile addProfile(Ref ref) {
  final repository = ref.read(signRepositoryProvider);
  return AddProfile(repository);
}

@riverpod
DeleteProfile deleteProfile(Ref ref) {
  final repository = ref.read(signRepositoryProvider);
  return DeleteProfile(repository);
}

@riverpod
GetProfile getProfile(Ref ref) {
  final repository = ref.read(signRepositoryProvider);
  return GetProfile(repository);
}