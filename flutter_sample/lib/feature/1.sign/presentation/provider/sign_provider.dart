
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/data_sources/supabase/supabase_sign_api_service.dart';
import '../../data/repository/sign_repository_impl.dart';
import '../../domain/repository/sign_repository.dart';
import '../../domain/usecases/user_verify.dart';

part 'sign_provider.g.dart';

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