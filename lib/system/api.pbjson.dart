//
//  Generated code. Do not modify.
//  source: system/api.proto
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

@$core.Deprecated('Use aPIResponseDescriptor instead')
const APIResponse$json = {
  '1': 'APIResponse',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 3, '10': 'code'},
    {'1': 'response', '3': 2, '4': 1, '5': 9, '10': 'response'},
  ],
};

/// Descriptor for `APIResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPIResponseDescriptor = $convert.base64Decode(
    'CgtBUElSZXNwb25zZRISCgRjb2RlGAEgASgDUgRjb2RlEhoKCHJlc3BvbnNlGAIgASgJUghyZX'
    'Nwb25zZQ==');

@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = {
  '1': 'LoginResponse',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {'1': 'expire', '3': 2, '4': 1, '5': 9, '10': 'expire'},
    {'1': 'code', '3': 3, '4': 1, '5': 3, '10': 'code'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode(
    'Cg1Mb2dpblJlc3BvbnNlEhQKBXRva2VuGAEgASgJUgV0b2tlbhIWCgZleHBpcmUYAiABKAlSBm'
    'V4cGlyZRISCgRjb2RlGAMgASgDUgRjb2Rl');

@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = {
  '1': 'LoginRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {'1': 'mfa_code', '3': 3, '4': 1, '5': 9, '10': 'mfaCode'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode(
    'CgxMb2dpblJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3JkGA'
    'IgASgJUghwYXNzd29yZBIZCghtZmFfY29kZRgDIAEoCVIHbWZhQ29kZQ==');

@$core.Deprecated('Use changePasswordRequestDescriptor instead')
const ChangePasswordRequest$json = {
  '1': 'ChangePasswordRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'old_password', '3': 2, '4': 1, '5': 9, '10': 'oldPassword'},
    {'1': 'new_password', '3': 3, '4': 1, '5': 9, '10': 'newPassword'},
  ],
};

/// Descriptor for `ChangePasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changePasswordRequestDescriptor = $convert.base64Decode(
    'ChVDaGFuZ2VQYXNzd29yZFJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEiEKDG'
    '9sZF9wYXNzd29yZBgCIAEoCVILb2xkUGFzc3dvcmQSIQoMbmV3X3Bhc3N3b3JkGAMgASgJUgtu'
    'ZXdQYXNzd29yZA==');

