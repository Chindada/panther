//
//  Generated code. Do not modify.
//  source: system/system.proto
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

@$core.Deprecated('Use settingKeyDescriptor instead')
const SettingKey$json = {
  '1': 'SettingKey',
  '2': [
    {'1': 'SETTING_UNKNOWN', '2': 0},
    {'1': 'SETTING_JWT', '2': 1},
  ],
};

/// Descriptor for `SettingKey`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List settingKeyDescriptor = $convert.base64Decode(
    'CgpTZXR0aW5nS2V5EhMKD1NFVFRJTkdfVU5LTk9XThAAEg8KC1NFVFRJTkdfSldUEAE=');

@$core.Deprecated('Use settingJWTDescriptor instead')
const SettingJWT$json = {
  '1': 'SettingJWT',
  '2': [
    {'1': 'secret', '3': 1, '4': 1, '5': 9, '10': 'secret'},
    {'1': 'updated_at', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
};

/// Descriptor for `SettingJWT`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List settingJWTDescriptor = $convert.base64Decode(
    'CgpTZXR0aW5nSldUEhYKBnNlY3JldBgBIAEoCVIGc2VjcmV0EjkKCnVwZGF0ZWRfYXQYCyABKA'
    'syGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgl1cGRhdGVkQXQ=');

@$core.Deprecated('Use systemSettingDescriptor instead')
const SystemSetting$json = {
  '1': 'SystemSetting',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 14, '6': '.system.SettingKey', '10': 'key'},
    {'1': 'jwt', '3': 11, '4': 1, '5': 11, '6': '.system.SettingJWT', '9': 0, '10': 'jwt'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `SystemSetting`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List systemSettingDescriptor = $convert.base64Decode(
    'Cg1TeXN0ZW1TZXR0aW5nEiQKA2tleRgBIAEoDjISLnN5c3RlbS5TZXR0aW5nS2V5UgNrZXkSJg'
    'oDand0GAsgASgLMhIuc3lzdGVtLlNldHRpbmdKV1RIAFIDand0QgcKBXZhbHVl');

@$core.Deprecated('Use systemBuildDescriptor instead')
const SystemBuild$json = {
  '1': 'SystemBuild',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    {'1': 'commit', '3': 2, '4': 1, '5': 9, '10': 'commit'},
  ],
};

/// Descriptor for `SystemBuild`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List systemBuildDescriptor = $convert.base64Decode(
    'CgtTeXN0ZW1CdWlsZBIYCgd2ZXJzaW9uGAEgASgJUgd2ZXJzaW9uEhYKBmNvbW1pdBgCIAEoCV'
    'IGY29tbWl0');

@$core.Deprecated('Use systemInfoDescriptor instead')
const SystemInfo$json = {
  '1': 'SystemInfo',
  '2': [
    {'1': 'launch_time', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'launchTime'},
    {'1': 'disk_usage', '3': 2, '4': 1, '5': 1, '10': 'diskUsage'},
    {'1': 'core', '3': 3, '4': 1, '5': 11, '6': '.system.SystemBuild', '10': 'core'},
    {'1': 'web', '3': 4, '4': 1, '5': 11, '6': '.system.SystemBuild', '10': 'web'},
  ],
};

/// Descriptor for `SystemInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List systemInfoDescriptor = $convert.base64Decode(
    'CgpTeXN0ZW1JbmZvEjsKC2xhdW5jaF90aW1lGAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbW'
    'VzdGFtcFIKbGF1bmNoVGltZRIdCgpkaXNrX3VzYWdlGAIgASgBUglkaXNrVXNhZ2USJwoEY29y'
    'ZRgDIAEoCzITLnN5c3RlbS5TeXN0ZW1CdWlsZFIEY29yZRIlCgN3ZWIYBCABKAsyEy5zeXN0ZW'
    '0uU3lzdGVtQnVpbGRSA3dlYg==');

