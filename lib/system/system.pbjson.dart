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

