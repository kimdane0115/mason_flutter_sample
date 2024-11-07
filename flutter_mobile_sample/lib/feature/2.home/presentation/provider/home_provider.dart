
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/data_sources/supabase/supabase_home_api_service.dart';
import '../../data/repository/home_repository_impl.dart';
import '../../domain/repository/home_repository.dart';
import '../../domain/usecases/add_member.dart';
import '../../domain/usecases/delete_member.dart';
import '../../domain/usecases/get_members.dart';
import '../../domain/usecases/update_member.dart';

part 'home_provider.g.dart';

// @Riverpod(keepAlive: true)
// SupabaseApiClient suApiService(SupabaseApiClientRef ref) {
//   return SupabaseApiClient();
// }
@Riverpod(keepAlive: true)
SupabaseApiService supabaseApiClient (SupabaseApiClientRef ref) {
  return SupabaseApiServiceImpl();
}

@Riverpod(keepAlive: true)
HomeRepository homeRepository(HomeRepositoryRef ref) {
  final homeApiService = ref.read(supabaseApiClientProvider);
  return HomeRepositoryImpl(homeApiService);
}

@Riverpod(keepAlive: true)
GetMembers getMembers(GetMembersRef ref) {
  final repository = ref.read(homeRepositoryProvider);
  return GetMembers(repository);
}

@Riverpod(keepAlive: true)
AddMember addMember(AddMemberRef ref) {
  final repository = ref.read(homeRepositoryProvider);
  return AddMember(repository);
}

@Riverpod(keepAlive: true)
UpdateMember updateMemeber(UpdateMemeberRef ref) {
  final repository = ref.read(homeRepositoryProvider);
  return UpdateMember(repository);
}

@Riverpod(keepAlive: true)
DeleteMember deleteMemeber(DeleteMemeberRef ref) {
  final repository = ref.read(homeRepositoryProvider);
  return DeleteMember(repository);
}