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

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// class APISecret(BaseModel):
///     api_key: str
///     api_key_secret: str
class APISecret extends $pb.GeneratedMessage {
  factory APISecret({
    $core.String? apiKey,
    $core.String? apiKeySecret,
  }) {
    final result = create();
    if (apiKey != null) result.apiKey = apiKey;
    if (apiKeySecret != null) result.apiKeySecret = apiKeySecret;
    return result;
  }

  APISecret._();

  factory APISecret.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory APISecret.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'APISecret', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'apiKey')
    ..aOS(2, _omitFieldNames ? '' : 'apiKeySecret')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  APISecret clone() => APISecret()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  APISecret copyWith(void Function(APISecret) updates) => super.copyWith((message) => updates(message as APISecret)) as APISecret;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static APISecret create() => APISecret._();
  @$core.override
  APISecret createEmptyInstance() => create();
  static $pb.PbList<APISecret> createRepeated() => $pb.PbList<APISecret>();
  @$core.pragma('dart2js:noInline')
  static APISecret getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<APISecret>(create);
  static APISecret? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get apiKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set apiKey($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasApiKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearApiKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get apiKeySecret => $_getSZ(1);
  @$pb.TagNumber(2)
  set apiKeySecret($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasApiKeySecret() => $_has(1);
  @$pb.TagNumber(2)
  void clearApiKeySecret() => $_clearField(2);
}

/// class CASecret(BaseModel):
///     person_id: str
///     ca_path: str
///     ca_password: str
class CASecret extends $pb.GeneratedMessage {
  factory CASecret({
    $core.String? personId,
    $core.String? caPath,
    $core.String? caPassword,
  }) {
    final result = create();
    if (personId != null) result.personId = personId;
    if (caPath != null) result.caPath = caPath;
    if (caPassword != null) result.caPassword = caPassword;
    return result;
  }

  CASecret._();

  factory CASecret.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory CASecret.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CASecret', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'personId')
    ..aOS(2, _omitFieldNames ? '' : 'caPath')
    ..aOS(3, _omitFieldNames ? '' : 'caPassword')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CASecret clone() => CASecret()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CASecret copyWith(void Function(CASecret) updates) => super.copyWith((message) => updates(message as CASecret)) as CASecret;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CASecret create() => CASecret._();
  @$core.override
  CASecret createEmptyInstance() => create();
  static $pb.PbList<CASecret> createRepeated() => $pb.PbList<CASecret>();
  @$core.pragma('dart2js:noInline')
  static CASecret getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CASecret>(create);
  static CASecret? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get personId => $_getSZ(0);
  @$pb.TagNumber(1)
  set personId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPersonId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPersonId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get caPath => $_getSZ(1);
  @$pb.TagNumber(2)
  set caPath($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCaPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearCaPath() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get caPassword => $_getSZ(2);
  @$pb.TagNumber(3)
  set caPassword($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCaPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearCaPassword() => $_clearField(3);
}

/// class ShioajiAuth(BaseModel):
///     name: str
///     api_secret: APISecret
///     ca_secret: CASecret
class ShioajiAuth extends $pb.GeneratedMessage {
  factory ShioajiAuth({
    $core.String? name,
    APISecret? apiSecret,
    CASecret? caSecret,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (apiSecret != null) result.apiSecret = apiSecret;
    if (caSecret != null) result.caSecret = caSecret;
    return result;
  }

  ShioajiAuth._();

  factory ShioajiAuth.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ShioajiAuth.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShioajiAuth', package: const $pb.PackageName(_omitMessageNames ? '' : 'auth'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<APISecret>(2, _omitFieldNames ? '' : 'apiSecret', subBuilder: APISecret.create)
    ..aOM<CASecret>(3, _omitFieldNames ? '' : 'caSecret', subBuilder: CASecret.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShioajiAuth clone() => ShioajiAuth()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShioajiAuth copyWith(void Function(ShioajiAuth) updates) => super.copyWith((message) => updates(message as ShioajiAuth)) as ShioajiAuth;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShioajiAuth create() => ShioajiAuth._();
  @$core.override
  ShioajiAuth createEmptyInstance() => create();
  static $pb.PbList<ShioajiAuth> createRepeated() => $pb.PbList<ShioajiAuth>();
  @$core.pragma('dart2js:noInline')
  static ShioajiAuth getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShioajiAuth>(create);
  static ShioajiAuth? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  APISecret get apiSecret => $_getN(1);
  @$pb.TagNumber(2)
  set apiSecret(APISecret value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasApiSecret() => $_has(1);
  @$pb.TagNumber(2)
  void clearApiSecret() => $_clearField(2);
  @$pb.TagNumber(2)
  APISecret ensureApiSecret() => $_ensure(1);

  @$pb.TagNumber(3)
  CASecret get caSecret => $_getN(2);
  @$pb.TagNumber(3)
  set caSecret(CASecret value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCaSecret() => $_has(2);
  @$pb.TagNumber(3)
  void clearCaSecret() => $_clearField(3);
  @$pb.TagNumber(3)
  CASecret ensureCaSecret() => $_ensure(2);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
