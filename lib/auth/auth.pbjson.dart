//
//  Generated code. Do not modify.
//  source: auth/auth.proto
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

@$core.Deprecated('Use aPISecretDescriptor instead')
const APISecret$json = {
  '1': 'APISecret',
  '2': [
    {'1': 'api_key', '3': 1, '4': 1, '5': 9, '10': 'apiKey'},
    {'1': 'api_key_secret', '3': 2, '4': 1, '5': 9, '10': 'apiKeySecret'},
  ],
};

/// Descriptor for `APISecret`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPISecretDescriptor = $convert.base64Decode(
    'CglBUElTZWNyZXQSFwoHYXBpX2tleRgBIAEoCVIGYXBpS2V5EiQKDmFwaV9rZXlfc2VjcmV0GA'
    'IgASgJUgxhcGlLZXlTZWNyZXQ=');

@$core.Deprecated('Use cASecretDescriptor instead')
const CASecret$json = {
  '1': 'CASecret',
  '2': [
    {'1': 'person_id', '3': 1, '4': 1, '5': 9, '10': 'personId'},
    {'1': 'ca_path', '3': 2, '4': 1, '5': 9, '10': 'caPath'},
    {'1': 'ca_password', '3': 3, '4': 1, '5': 9, '10': 'caPassword'},
  ],
};

/// Descriptor for `CASecret`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cASecretDescriptor = $convert.base64Decode(
    'CghDQVNlY3JldBIbCglwZXJzb25faWQYASABKAlSCHBlcnNvbklkEhcKB2NhX3BhdGgYAiABKA'
    'lSBmNhUGF0aBIfCgtjYV9wYXNzd29yZBgDIAEoCVIKY2FQYXNzd29yZA==');

@$core.Deprecated('Use shioajiAuthDescriptor instead')
const ShioajiAuth$json = {
  '1': 'ShioajiAuth',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'api_secret', '3': 2, '4': 1, '5': 11, '6': '.auth.APISecret', '10': 'apiSecret'},
    {'1': 'ca_secret', '3': 3, '4': 1, '5': 11, '6': '.auth.CASecret', '10': 'caSecret'},
  ],
};

/// Descriptor for `ShioajiAuth`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shioajiAuthDescriptor = $convert.base64Decode(
    'CgtTaGlvYWppQXV0aBISCgRuYW1lGAEgASgJUgRuYW1lEi4KCmFwaV9zZWNyZXQYAiABKAsyDy'
    '5hdXRoLkFQSVNlY3JldFIJYXBpU2VjcmV0EisKCWNhX3NlY3JldBgDIAEoCzIOLmF1dGguQ0FT'
    'ZWNyZXRSCGNhU2VjcmV0');

