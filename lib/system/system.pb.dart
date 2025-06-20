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

import '../google/protobuf/timestamp.pb.dart' as $5;
import 'system.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'system.pbenum.dart';

class SettingJWT extends $pb.GeneratedMessage {
  factory SettingJWT({
    $core.String? secret,
    $5.Timestamp? updatedAt,
  }) {
    final result = create();
    if (secret != null) result.secret = secret;
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  SettingJWT._();

  factory SettingJWT.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SettingJWT.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SettingJWT', package: const $pb.PackageName(_omitMessageNames ? '' : 'system'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'secret')
    ..aOM<$5.Timestamp>(11, _omitFieldNames ? '' : 'updatedAt', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SettingJWT clone() => SettingJWT()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SettingJWT copyWith(void Function(SettingJWT) updates) => super.copyWith((message) => updates(message as SettingJWT)) as SettingJWT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SettingJWT create() => SettingJWT._();
  @$core.override
  SettingJWT createEmptyInstance() => create();
  static $pb.PbList<SettingJWT> createRepeated() => $pb.PbList<SettingJWT>();
  @$core.pragma('dart2js:noInline')
  static SettingJWT getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SettingJWT>(create);
  static SettingJWT? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get secret => $_getSZ(0);
  @$pb.TagNumber(1)
  set secret($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSecret() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecret() => $_clearField(1);

  @$pb.TagNumber(11)
  $5.Timestamp get updatedAt => $_getN(1);
  @$pb.TagNumber(11)
  set updatedAt($5.Timestamp value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasUpdatedAt() => $_has(1);
  @$pb.TagNumber(11)
  void clearUpdatedAt() => $_clearField(11);
  @$pb.TagNumber(11)
  $5.Timestamp ensureUpdatedAt() => $_ensure(1);
}

enum SystemSetting_Value {
  jwt, 
  notSet
}

class SystemSetting extends $pb.GeneratedMessage {
  factory SystemSetting({
    SettingKey? key,
    SettingJWT? jwt,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (jwt != null) result.jwt = jwt;
    return result;
  }

  SystemSetting._();

  factory SystemSetting.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SystemSetting.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, SystemSetting_Value> _SystemSetting_ValueByTag = {
    11 : SystemSetting_Value.jwt,
    0 : SystemSetting_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SystemSetting', package: const $pb.PackageName(_omitMessageNames ? '' : 'system'), createEmptyInstance: create)
    ..oo(0, [11])
    ..e<SettingKey>(1, _omitFieldNames ? '' : 'key', $pb.PbFieldType.OE, defaultOrMaker: SettingKey.SETTING_UNKNOWN, valueOf: SettingKey.valueOf, enumValues: SettingKey.values)
    ..aOM<SettingJWT>(11, _omitFieldNames ? '' : 'jwt', subBuilder: SettingJWT.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting clone() => SystemSetting()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemSetting copyWith(void Function(SystemSetting) updates) => super.copyWith((message) => updates(message as SystemSetting)) as SystemSetting;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemSetting create() => SystemSetting._();
  @$core.override
  SystemSetting createEmptyInstance() => create();
  static $pb.PbList<SystemSetting> createRepeated() => $pb.PbList<SystemSetting>();
  @$core.pragma('dart2js:noInline')
  static SystemSetting getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SystemSetting>(create);
  static SystemSetting? _defaultInstance;

  SystemSetting_Value whichValue() => _SystemSetting_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SettingKey get key => $_getN(0);
  @$pb.TagNumber(1)
  set key(SettingKey value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);

  @$pb.TagNumber(11)
  SettingJWT get jwt => $_getN(1);
  @$pb.TagNumber(11)
  set jwt(SettingJWT value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasJwt() => $_has(1);
  @$pb.TagNumber(11)
  void clearJwt() => $_clearField(11);
  @$pb.TagNumber(11)
  SettingJWT ensureJwt() => $_ensure(1);
}

class SystemBuild extends $pb.GeneratedMessage {
  factory SystemBuild({
    $core.String? version,
    $core.String? commit,
  }) {
    final result = create();
    if (version != null) result.version = version;
    if (commit != null) result.commit = commit;
    return result;
  }

  SystemBuild._();

  factory SystemBuild.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SystemBuild.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SystemBuild', package: const $pb.PackageName(_omitMessageNames ? '' : 'system'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'version')
    ..aOS(2, _omitFieldNames ? '' : 'commit')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemBuild clone() => SystemBuild()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemBuild copyWith(void Function(SystemBuild) updates) => super.copyWith((message) => updates(message as SystemBuild)) as SystemBuild;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemBuild create() => SystemBuild._();
  @$core.override
  SystemBuild createEmptyInstance() => create();
  static $pb.PbList<SystemBuild> createRepeated() => $pb.PbList<SystemBuild>();
  @$core.pragma('dart2js:noInline')
  static SystemBuild getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SystemBuild>(create);
  static SystemBuild? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get commit => $_getSZ(1);
  @$pb.TagNumber(2)
  set commit($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCommit() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommit() => $_clearField(2);
}

class SystemInfo extends $pb.GeneratedMessage {
  factory SystemInfo({
    $5.Timestamp? launchTime,
    $core.double? diskUsage,
    SystemBuild? core,
    SystemBuild? web,
  }) {
    final result = create();
    if (launchTime != null) result.launchTime = launchTime;
    if (diskUsage != null) result.diskUsage = diskUsage;
    if (core != null) result.core = core;
    if (web != null) result.web = web;
    return result;
  }

  SystemInfo._();

  factory SystemInfo.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SystemInfo.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SystemInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'system'), createEmptyInstance: create)
    ..aOM<$5.Timestamp>(1, _omitFieldNames ? '' : 'launchTime', subBuilder: $5.Timestamp.create)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'diskUsage', $pb.PbFieldType.OD)
    ..aOM<SystemBuild>(3, _omitFieldNames ? '' : 'core', subBuilder: SystemBuild.create)
    ..aOM<SystemBuild>(4, _omitFieldNames ? '' : 'web', subBuilder: SystemBuild.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemInfo clone() => SystemInfo()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemInfo copyWith(void Function(SystemInfo) updates) => super.copyWith((message) => updates(message as SystemInfo)) as SystemInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemInfo create() => SystemInfo._();
  @$core.override
  SystemInfo createEmptyInstance() => create();
  static $pb.PbList<SystemInfo> createRepeated() => $pb.PbList<SystemInfo>();
  @$core.pragma('dart2js:noInline')
  static SystemInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SystemInfo>(create);
  static SystemInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $5.Timestamp get launchTime => $_getN(0);
  @$pb.TagNumber(1)
  set launchTime($5.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasLaunchTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearLaunchTime() => $_clearField(1);
  @$pb.TagNumber(1)
  $5.Timestamp ensureLaunchTime() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get diskUsage => $_getN(1);
  @$pb.TagNumber(2)
  set diskUsage($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDiskUsage() => $_has(1);
  @$pb.TagNumber(2)
  void clearDiskUsage() => $_clearField(2);

  @$pb.TagNumber(3)
  SystemBuild get core => $_getN(2);
  @$pb.TagNumber(3)
  set core(SystemBuild value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCore() => $_has(2);
  @$pb.TagNumber(3)
  void clearCore() => $_clearField(3);
  @$pb.TagNumber(3)
  SystemBuild ensureCore() => $_ensure(2);

  @$pb.TagNumber(4)
  SystemBuild get web => $_getN(3);
  @$pb.TagNumber(4)
  set web(SystemBuild value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasWeb() => $_has(3);
  @$pb.TagNumber(4)
  void clearWeb() => $_clearField(4);
  @$pb.TagNumber(4)
  SystemBuild ensureWeb() => $_ensure(3);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
