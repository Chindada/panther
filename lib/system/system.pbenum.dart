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

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SettingKey extends $pb.ProtobufEnum {
  static const SettingKey SETTING_UNKNOWN = SettingKey._(0, _omitEnumNames ? '' : 'SETTING_UNKNOWN');
  static const SettingKey SETTING_JWT = SettingKey._(1, _omitEnumNames ? '' : 'SETTING_JWT');

  static const $core.List<SettingKey> values = <SettingKey> [
    SETTING_UNKNOWN,
    SETTING_JWT,
  ];

  static final $core.List<SettingKey?> _byValue = $pb.ProtobufEnum.$_initByValueList(values, 1);
  static SettingKey? valueOf($core.int value) =>  value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SettingKey._(super.value, super.name);
}


const $core.bool _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
