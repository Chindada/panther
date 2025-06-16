//
//  Generated code. Do not modify.
//  source: system/backup.proto
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

@$core.Deprecated('Use backupDescriptor instead')
const Backup$json = {
  '1': 'Backup',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {'1': 'created_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `Backup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List backupDescriptor = $convert.base64Decode(
    'CgZCYWNrdXASEgoEbmFtZRgBIAEoCVIEbmFtZRISCgRwYXRoGAIgASgJUgRwYXRoEjkKCmNyZW'
    'F0ZWRfYXQYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQ=');

@$core.Deprecated('Use backupListDescriptor instead')
const BackupList$json = {
  '1': 'BackupList',
  '2': [
    {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.system.Backup', '10': 'list'},
  ],
};

/// Descriptor for `BackupList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List backupListDescriptor = $convert.base64Decode(
    'CgpCYWNrdXBMaXN0EiIKBGxpc3QYASADKAsyDi5zeXN0ZW0uQmFja3VwUgRsaXN0');

