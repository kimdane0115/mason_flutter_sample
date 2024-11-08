import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/member.dart';
import '../../domain/usecases/add_member.dart';
import '../../domain/usecases/delete_member.dart';
import '../../domain/usecases/get_members.dart';
import '../../domain/usecases/update_member.dart';
import 'home_provider.dart';
// part 'member_state_notifier.g.dart';

final memberStateNotifierProvider =
    StateNotifierProvider<MemberListStateNotifier, List<Member>>((ref) {
  final getMembers = ref.read(getMembersProvider);
  final addMember = ref.read(addMemberProvider);
  final updateMember = ref.read(updateMemeberProvider);
  final deleteMember = ref.read(deleteMemeberProvider);
  return MemberListStateNotifier(
      getMembers, addMember, updateMember, deleteMember);
});

class MemberListStateNotifier extends StateNotifier<List<Member>> {
  final GetMembers _getMembers;
  final AddMember _addMember;
  final UpdateMember _updateMember;
  final DeleteMember _deleteMember;

  MemberListStateNotifier(
      this._getMembers, this._addMember, this._updateMember, this._deleteMember)
      : super([]);

  Future<void> getMember(String teamId) async {
    // final tripsOrFailure = await _getTrips();
    // tripsOrFailure.fold((error) => state = [], (trips) => state = trips);
    final res = await _getMembers(teamId);
  }

  Future<void> addMember(Map<String, dynamic> request) async {
    await _addMember(request);
    //state = [...state, trip];
  }

  Future<void> updateMember(int id, Map<String, dynamic> request) async {
    await _updateMember(request, id);
    //state = [...state, trip];
  }

  Future<void> deleteMember(int id) async {
    await _deleteMember(id);
    //state = [...state, trip];
  }
}
