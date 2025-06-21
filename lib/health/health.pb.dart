//
//  Generated code. Do not modify.
//  source: health/health.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/empty.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BasicDataInterfaceApi {
  final $pb.RpcClient _client;

  BasicDataInterfaceApi(this._client);

  $async.Future<$0.Empty> healthChannel($pb.ClientContext? ctx, $0.Empty request) =>
    _client.invoke<$0.Empty>(ctx, 'BasicDataInterface', 'HealthChannel', request, $0.Empty())
  ;
}

