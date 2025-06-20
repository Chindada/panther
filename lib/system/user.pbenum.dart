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

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UserRole extends $pb.ProtobufEnum {
  static const UserRole UNKNOWN = UserRole._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const UserRole USER = UserRole._(1, _omitEnumNames ? '' : 'USER');
  static const UserRole ADMIN = UserRole._(2, _omitEnumNames ? '' : 'ADMIN');
  static const UserRole ROOT = UserRole._(3, _omitEnumNames ? '' : 'ROOT');

  static const $core.List<UserRole> values = <UserRole> [
    UNKNOWN,
    USER,
    ADMIN,
    ROOT,
  ];

  static final $core.List<UserRole?> _byValue = $pb.ProtobufEnum.$_initByValueList(values, 3);
  static UserRole? valueOf($core.int value) =>  value < 0 || value >= _byValue.length ? null : _byValue[value];

  const UserRole._(super.value, super.name);
}


const $core.bool _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
