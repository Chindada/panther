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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $5;
import 'event.pbenum.dart';
import 'user.pb.dart' as $6;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'event.pbenum.dart';

class LoginEvent extends $pb.GeneratedMessage {
  factory LoginEvent({
    $fixnum.Int64? id,
    $6.LocalUser? user,
    $core.String? ip,
    LoginRespCode? respCode,
    $5.Timestamp? createdAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (user != null) result.user = user;
    if (ip != null) result.ip = ip;
    if (respCode != null) result.respCode = respCode;
    if (createdAt != null) result.createdAt = createdAt;
    return result;
  }

  LoginEvent._();

  factory LoginEvent.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LoginEvent.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoginEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'system'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOM<$6.LocalUser>(2, _omitFieldNames ? '' : 'user', subBuilder: $6.LocalUser.create)
    ..aOS(3, _omitFieldNames ? '' : 'ip')
    ..e<LoginRespCode>(4, _omitFieldNames ? '' : 'respCode', $pb.PbFieldType.OE, defaultOrMaker: LoginRespCode.OK, valueOf: LoginRespCode.valueOf, enumValues: LoginRespCode.values)
    ..aOM<$5.Timestamp>(5, _omitFieldNames ? '' : 'createdAt', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginEvent clone() => LoginEvent()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginEvent copyWith(void Function(LoginEvent) updates) => super.copyWith((message) => updates(message as LoginEvent)) as LoginEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginEvent create() => LoginEvent._();
  @$core.override
  LoginEvent createEmptyInstance() => create();
  static $pb.PbList<LoginEvent> createRepeated() => $pb.PbList<LoginEvent>();
  @$core.pragma('dart2js:noInline')
  static LoginEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginEvent>(create);
  static LoginEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $6.LocalUser get user => $_getN(1);
  @$pb.TagNumber(2)
  set user($6.LocalUser value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => $_clearField(2);
  @$pb.TagNumber(2)
  $6.LocalUser ensureUser() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get ip => $_getSZ(2);
  @$pb.TagNumber(3)
  set ip($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIp() => $_has(2);
  @$pb.TagNumber(3)
  void clearIp() => $_clearField(3);

  @$pb.TagNumber(4)
  LoginRespCode get respCode => $_getN(3);
  @$pb.TagNumber(4)
  set respCode(LoginRespCode value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasRespCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearRespCode() => $_clearField(4);

  @$pb.TagNumber(5)
  $5.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(5)
  set createdAt($5.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => $_clearField(5);
  @$pb.TagNumber(5)
  $5.Timestamp ensureCreatedAt() => $_ensure(4);
}

class LoginEventList extends $pb.GeneratedMessage {
  factory LoginEventList({
    $core.Iterable<LoginEvent>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  LoginEventList._();

  factory LoginEventList.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LoginEventList.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoginEventList', package: const $pb.PackageName(_omitMessageNames ? '' : 'system'), createEmptyInstance: create)
    ..pc<LoginEvent>(1, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM, subBuilder: LoginEvent.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginEventList clone() => LoginEventList()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginEventList copyWith(void Function(LoginEventList) updates) => super.copyWith((message) => updates(message as LoginEventList)) as LoginEventList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginEventList create() => LoginEventList._();
  @$core.override
  LoginEventList createEmptyInstance() => create();
  static $pb.PbList<LoginEventList> createRepeated() => $pb.PbList<LoginEventList>();
  @$core.pragma('dart2js:noInline')
  static LoginEventList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginEventList>(create);
  static LoginEventList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<LoginEvent> get list => $_getList(0);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
