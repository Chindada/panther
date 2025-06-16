//
//  Generated code. Do not modify.
//  source: basic/grpc/basic.proto
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

import '../../google/protobuf/empty.pb.dart' as $0;
import '../future.pb.dart' as $2;
import '../option.pb.dart' as $3;
import '../stock.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BasicDataInterfaceApi {
  final $pb.RpcClient _client;

  BasicDataInterfaceApi(this._client);

  $async.Future<$1.StockDetail> getAllStockDetail($pb.ClientContext? ctx, $0.Empty request) =>
    _client.invoke<$1.StockDetail>(ctx, 'BasicDataInterface', 'GetAllStockDetail', request, $1.StockDetail())
  ;
  $async.Future<$2.FutureDetail> getAllFutureDetail($pb.ClientContext? ctx, $0.Empty request) =>
    _client.invoke<$2.FutureDetail>(ctx, 'BasicDataInterface', 'GetAllFutureDetail', request, $2.FutureDetail())
  ;
  $async.Future<$3.OptionDetail> getAllOptionDetail($pb.ClientContext? ctx, $0.Empty request) =>
    _client.invoke<$3.OptionDetail>(ctx, 'BasicDataInterface', 'GetAllOptionDetail', request, $3.OptionDetail())
  ;
}

