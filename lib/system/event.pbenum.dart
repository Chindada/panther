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

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class LoginRespCode extends $pb.ProtobufEnum {
  static const LoginRespCode OK = LoginRespCode._(0, _omitEnumNames ? '' : 'OK');
  static const LoginRespCode PASSWORD_INCORRECT = LoginRespCode._(1, _omitEnumNames ? '' : 'PASSWORD_INCORRECT');
  static const LoginRespCode USER_NOT_FOUND = LoginRespCode._(2, _omitEnumNames ? '' : 'USER_NOT_FOUND');
  static const LoginRespCode DB_ERROR = LoginRespCode._(3, _omitEnumNames ? '' : 'DB_ERROR');
  static const LoginRespCode MFA_FAILED = LoginRespCode._(4, _omitEnumNames ? '' : 'MFA_FAILED');

  static const $core.List<LoginRespCode> values = <LoginRespCode> [
    OK,
    PASSWORD_INCORRECT,
    USER_NOT_FOUND,
    DB_ERROR,
    MFA_FAILED,
  ];

  static final $core.List<LoginRespCode?> _byValue = $pb.ProtobufEnum.$_initByValueList(values, 4);
  static LoginRespCode? valueOf($core.int value) =>  value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LoginRespCode._(super.value, super.name);
}


const $core.bool _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
