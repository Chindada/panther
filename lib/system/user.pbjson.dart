//
//  Generated code. Do not modify.
//  source: system/user.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userRoleDescriptor instead')
const UserRole$json = {
  '1': 'UserRole',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'USER', '2': 1},
    {'1': 'ADMIN', '2': 2},
    {'1': 'ROOT', '2': 3},
  ],
};

/// Descriptor for `UserRole`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List userRoleDescriptor = $convert.base64Decode(
    'CghVc2VyUm9sZRILCgdVTktOT1dOEAASCAoEVVNFUhABEgkKBUFETUlOEAISCAoEUk9PVBAD');

@$core.Deprecated('Use basicUserDescriptor instead')
const BasicUser$json = {
  '1': 'BasicUser',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
    {'1': 'role', '3': 4, '4': 1, '5': 14, '6': '.system.UserRole', '10': 'role'},
  ],
};

/// Descriptor for `BasicUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List basicUserDescriptor = $convert.base64Decode(
    'CglCYXNpY1VzZXISFAoFZW1haWwYASABKAlSBWVtYWlsEhoKCHVzZXJuYW1lGAIgASgJUgh1c2'
    'VybmFtZRIaCghwYXNzd29yZBgDIAEoCVIIcGFzc3dvcmQSJAoEcm9sZRgEIAEoDjIQLnN5c3Rl'
    'bS5Vc2VyUm9sZVIEcm9sZQ==');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'basic', '3': 2, '4': 1, '5': 11, '6': '.system.BasicUser', '10': 'basic'},
    {'1': 'enable_totp', '3': 3, '4': 1, '5': 8, '10': 'enableTotp'},
    {'1': 'totp_id', '3': 4, '4': 1, '5': 3, '10': 'totpId'},
    {'1': 'created_at', '3': 31, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'updated_at', '3': 32, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEg4KAmlkGAEgASgDUgJpZBInCgViYXNpYxgCIAEoCzIRLnN5c3RlbS5CYXNpY1VzZX'
    'JSBWJhc2ljEh8KC2VuYWJsZV90b3RwGAMgASgIUgplbmFibGVUb3RwEhcKB3RvdHBfaWQYBCAB'
    'KANSBnRvdHBJZBI5CgpjcmVhdGVkX2F0GB8gASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdG'
    'FtcFIJY3JlYXRlZEF0EjkKCnVwZGF0ZWRfYXQYICABKAsyGi5nb29nbGUucHJvdG9idWYuVGlt'
    'ZXN0YW1wUgl1cGRhdGVkQXQ=');

@$core.Deprecated('Use userListDescriptor instead')
const UserList$json = {
  '1': 'UserList',
  '2': [
    {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.system.User', '10': 'list'},
  ],
};

/// Descriptor for `UserList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userListDescriptor = $convert.base64Decode(
    'CghVc2VyTGlzdBIgCgRsaXN0GAEgAygLMgwuc3lzdGVtLlVzZXJSBGxpc3Q=');

@$core.Deprecated('Use totpDescriptor instead')
const Totp$json = {
  '1': 'Totp',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'secret', '3': 2, '4': 1, '5': 9, '10': 'secret'},
    {'1': 'qr_code', '3': 3, '4': 1, '5': 9, '10': 'qrCode'},
  ],
};

/// Descriptor for `Totp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List totpDescriptor = $convert.base64Decode(
    'CgRUb3RwEg4KAmlkGAEgASgDUgJpZBIWCgZzZWNyZXQYAiABKAlSBnNlY3JldBIXCgdxcl9jb2'
    'RlGAMgASgJUgZxckNvZGU=');

