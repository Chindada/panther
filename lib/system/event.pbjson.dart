//
//  Generated code. Do not modify.
//  source: system/event.proto
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

@$core.Deprecated('Use loginRespCodeDescriptor instead')
const LoginRespCode$json = {
  '1': 'LoginRespCode',
  '2': [
    {'1': 'OK', '2': 0},
    {'1': 'PASSWORD_INCORRECT', '2': 1},
    {'1': 'USER_NOT_FOUND', '2': 2},
    {'1': 'DB_ERROR', '2': 3},
    {'1': 'MFA_FAILED', '2': 4},
  ],
};

/// Descriptor for `LoginRespCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List loginRespCodeDescriptor = $convert.base64Decode(
    'Cg1Mb2dpblJlc3BDb2RlEgYKAk9LEAASFgoSUEFTU1dPUkRfSU5DT1JSRUNUEAESEgoOVVNFUl'
    '9OT1RfRk9VTkQQAhIMCghEQl9FUlJPUhADEg4KCk1GQV9GQUlMRUQQBA==');

@$core.Deprecated('Use loginEventDescriptor instead')
const LoginEvent$json = {
  '1': 'LoginEvent',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'local', '3': 2, '4': 1, '5': 11, '6': '.system.LocalUser', '10': 'local'},
    {'1': 'ip', '3': 3, '4': 1, '5': 9, '10': 'ip'},
    {'1': 'resp_code', '3': 4, '4': 1, '5': 14, '6': '.system.LoginRespCode', '10': 'respCode'},
    {'1': 'created_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `LoginEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginEventDescriptor = $convert.base64Decode(
    'CgpMb2dpbkV2ZW50Eg4KAmlkGAEgASgDUgJpZBInCgVsb2NhbBgCIAEoCzIRLnN5c3RlbS5Mb2'
    'NhbFVzZXJSBWxvY2FsEg4KAmlwGAMgASgJUgJpcBIyCglyZXNwX2NvZGUYBCABKA4yFS5zeXN0'
    'ZW0uTG9naW5SZXNwQ29kZVIIcmVzcENvZGUSOQoKY3JlYXRlZF9hdBgFIAEoCzIaLmdvb2dsZS'
    '5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdA==');

@$core.Deprecated('Use loginEventListDescriptor instead')
const LoginEventList$json = {
  '1': 'LoginEventList',
  '2': [
    {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.system.LoginEvent', '10': 'list'},
  ],
};

/// Descriptor for `LoginEventList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginEventListDescriptor = $convert.base64Decode(
    'Cg5Mb2dpbkV2ZW50TGlzdBImCgRsaXN0GAEgAygLMhIuc3lzdGVtLkxvZ2luRXZlbnRSBGxpc3'
    'Q=');

