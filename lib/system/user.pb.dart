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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $5;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BasicUser extends $pb.GeneratedMessage {
  factory BasicUser({
    $core.String? email,
    $core.String? username,
    $core.String? password,
  }) {
    final result = create();
    if (email != null) result.email = email;
    if (username != null) result.username = username;
    if (password != null) result.password = password;
    return result;
  }

  BasicUser._();

  factory BasicUser.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory BasicUser.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BasicUser', package: const $pb.PackageName(_omitMessageNames ? '' : 'system'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..aOS(3, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BasicUser clone() => BasicUser()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BasicUser copyWith(void Function(BasicUser) updates) => super.copyWith((message) => updates(message as BasicUser)) as BasicUser;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BasicUser create() => BasicUser._();
  @$core.override
  BasicUser createEmptyInstance() => create();
  static $pb.PbList<BasicUser> createRepeated() => $pb.PbList<BasicUser>();
  @$core.pragma('dart2js:noInline')
  static BasicUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BasicUser>(create);
  static BasicUser? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(3)
  set password($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => $_clearField(3);
}

class LocalUser extends $pb.GeneratedMessage {
  factory LocalUser({
    $fixnum.Int64? id,
    BasicUser? basic,
    $core.bool? needChangePassword,
    $5.Timestamp? createdAt,
    $5.Timestamp? updatedAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (basic != null) result.basic = basic;
    if (needChangePassword != null) result.needChangePassword = needChangePassword;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  LocalUser._();

  factory LocalUser.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LocalUser.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LocalUser', package: const $pb.PackageName(_omitMessageNames ? '' : 'system'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOM<BasicUser>(2, _omitFieldNames ? '' : 'basic', subBuilder: BasicUser.create)
    ..aOB(3, _omitFieldNames ? '' : 'needChangePassword')
    ..aOM<$5.Timestamp>(31, _omitFieldNames ? '' : 'createdAt', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(32, _omitFieldNames ? '' : 'updatedAt', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LocalUser clone() => LocalUser()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LocalUser copyWith(void Function(LocalUser) updates) => super.copyWith((message) => updates(message as LocalUser)) as LocalUser;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LocalUser create() => LocalUser._();
  @$core.override
  LocalUser createEmptyInstance() => create();
  static $pb.PbList<LocalUser> createRepeated() => $pb.PbList<LocalUser>();
  @$core.pragma('dart2js:noInline')
  static LocalUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocalUser>(create);
  static LocalUser? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  BasicUser get basic => $_getN(1);
  @$pb.TagNumber(2)
  set basic(BasicUser value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasBasic() => $_has(1);
  @$pb.TagNumber(2)
  void clearBasic() => $_clearField(2);
  @$pb.TagNumber(2)
  BasicUser ensureBasic() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get needChangePassword => $_getBF(2);
  @$pb.TagNumber(3)
  set needChangePassword($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNeedChangePassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearNeedChangePassword() => $_clearField(3);

  @$pb.TagNumber(31)
  $5.Timestamp get createdAt => $_getN(3);
  @$pb.TagNumber(31)
  set createdAt($5.Timestamp value) => $_setField(31, value);
  @$pb.TagNumber(31)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(31)
  void clearCreatedAt() => $_clearField(31);
  @$pb.TagNumber(31)
  $5.Timestamp ensureCreatedAt() => $_ensure(3);

  @$pb.TagNumber(32)
  $5.Timestamp get updatedAt => $_getN(4);
  @$pb.TagNumber(32)
  set updatedAt($5.Timestamp value) => $_setField(32, value);
  @$pb.TagNumber(32)
  $core.bool hasUpdatedAt() => $_has(4);
  @$pb.TagNumber(32)
  void clearUpdatedAt() => $_clearField(32);
  @$pb.TagNumber(32)
  $5.Timestamp ensureUpdatedAt() => $_ensure(4);
}

class LocalUserList extends $pb.GeneratedMessage {
  factory LocalUserList({
    $core.Iterable<LocalUser>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  LocalUserList._();

  factory LocalUserList.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LocalUserList.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LocalUserList', package: const $pb.PackageName(_omitMessageNames ? '' : 'system'), createEmptyInstance: create)
    ..pc<LocalUser>(1, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM, subBuilder: LocalUser.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LocalUserList clone() => LocalUserList()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LocalUserList copyWith(void Function(LocalUserList) updates) => super.copyWith((message) => updates(message as LocalUserList)) as LocalUserList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LocalUserList create() => LocalUserList._();
  @$core.override
  LocalUserList createEmptyInstance() => create();
  static $pb.PbList<LocalUserList> createRepeated() => $pb.PbList<LocalUserList>();
  @$core.pragma('dart2js:noInline')
  static LocalUserList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocalUserList>(create);
  static LocalUserList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<LocalUser> get list => $_getList(0);
}

class Totp extends $pb.GeneratedMessage {
  factory Totp({
    $fixnum.Int64? id,
    $core.String? secret,
    $core.String? qrCode,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (secret != null) result.secret = secret;
    if (qrCode != null) result.qrCode = qrCode;
    return result;
  }

  Totp._();

  factory Totp.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Totp.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Totp', package: const $pb.PackageName(_omitMessageNames ? '' : 'system'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'secret')
    ..aOS(3, _omitFieldNames ? '' : 'qrCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Totp clone() => Totp()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Totp copyWith(void Function(Totp) updates) => super.copyWith((message) => updates(message as Totp)) as Totp;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Totp create() => Totp._();
  @$core.override
  Totp createEmptyInstance() => create();
  static $pb.PbList<Totp> createRepeated() => $pb.PbList<Totp>();
  @$core.pragma('dart2js:noInline')
  static Totp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Totp>(create);
  static Totp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get secret => $_getSZ(1);
  @$pb.TagNumber(2)
  set secret($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSecret() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecret() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get qrCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set qrCode($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasQrCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearQrCode() => $_clearField(3);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
