
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../index.dart';

part 'sign_repository_provider.g.dart';

@riverpod
SupabaseSignApiService supabaseSignApiService (SupabaseSignApiServiceRef ref) {
  return SupabaseSignApiServiceImpl();
}

@Riverpod(keepAlive: true)
SignRepository signRepository(SignRepositoryRef ref) {
  final signApiService = ref.read(supabaseSignApiServiceProvider);
  return SignRepositoryImpl(signApiService);
}

@riverpod
UserVerify userVerify(UserVerifyRef ref) {
  final repository = ref.read(signRepositoryProvider);
  return UserVerify(repository);
}

@riverpod
AddProfile addProfile(AddProfileRef ref) {
  final repository = ref.read(signRepositoryProvider);
  return AddProfile(repository);
}

@riverpod
DeleteProfile deleteProfile(DeleteProfileRef ref) {
  final repository = ref.read(signRepositoryProvider);
  return DeleteProfile(repository);
}

@riverpod
GetProfile getProfile(GetProfileRef ref) {
  final repository = ref.read(signRepositoryProvider);
  return GetProfile(repository);
}