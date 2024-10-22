// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$supabaseSignApiServiceHash() =>
    r'1eb629199868b4bff87c415dbf634b0f360b7b1f';

/// See also [supabaseSignApiService].
@ProviderFor(supabaseSignApiService)
final supabaseSignApiServiceProvider =
    AutoDisposeProvider<SupabaseSignApiService>.internal(
  supabaseSignApiService,
  name: r'supabaseSignApiServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$supabaseSignApiServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SupabaseSignApiServiceRef
    = AutoDisposeProviderRef<SupabaseSignApiService>;
String _$signRepositoryHash() => r'd1ed961768798085f7155d70b01f2bd77365daa0';

/// See also [signRepository].
@ProviderFor(signRepository)
final signRepositoryProvider = Provider<SignRepository>.internal(
  signRepository,
  name: r'signRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$signRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SignRepositoryRef = ProviderRef<SignRepository>;
String _$userVerifyHash() => r'455fa4422e7dcc2eea8f445533dd4dfe0fa58f01';

/// See also [userVerify].
@ProviderFor(userVerify)
final userVerifyProvider = AutoDisposeProvider<UserVerify>.internal(
  userVerify,
  name: r'userVerifyProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userVerifyHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserVerifyRef = AutoDisposeProviderRef<UserVerify>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
