
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../index.dart';
import '../../data/data_sources/supabase/supabase_home_api_service.dart';

part 'home_provider.g.dart';

// @Riverpod(keepAlive: true)
// SupabaseApiClient suApiService(SupabaseApiClientRef ref) {
//   return SupabaseApiClient();
// }
@Riverpod(keepAlive: true)
SupabaseApiService supabaseApiClient (Ref ref) {
  return SupabaseApiServiceImpl();
}

@Riverpod(keepAlive: true)
HomeRepository homeRepository(Ref ref) {
  final homeApiService = ref.read(supabaseApiClientProvider);
  return HomeRepositoryImpl(homeApiService);
}

@Riverpod(keepAlive: true)
GetMembers getMembers(Ref ref) {
  final repository = ref.read(homeRepositoryProvider);
  return GetMembers(repository);
}

@Riverpod(keepAlive: true)
AddMember addMember(Ref ref) {
  final repository = ref.read(homeRepositoryProvider);
  return AddMember(repository);
}

@Riverpod(keepAlive: true)
UpdateMember updateMemeber(Ref ref) {
  final repository = ref.read(homeRepositoryProvider);
  return UpdateMember(repository);
}

@Riverpod(keepAlive: true)
DeleteMember deleteMemeber(Ref ref) {
  final repository = ref.read(homeRepositoryProvider);
  return DeleteMember(repository);
}