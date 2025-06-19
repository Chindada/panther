//
//  Generated code. Do not modify.
//  source: basic/basic.proto
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
import 'basic.pbjson.dart';
import 'future.pb.dart' as $2;
import 'option.pb.dart' as $3;
import 'stock.pb.dart' as $1;

export 'basic.pb.dart';

abstract class BasicDataInterfaceServiceBase extends $pb.GeneratedService {
  $async.Future<$0.Empty> healthChannel($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$1.StockDetailList> getAllStockDetail($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$2.FutureDetailList> getAllFutureDetail($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$3.OptionDetailList> getAllOptionDetail($pb.ServerContext ctx, $0.Empty request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'HealthChannel': return $0.Empty();
      case 'GetAllStockDetail': return $0.Empty();
      case 'GetAllFutureDetail': return $0.Empty();
      case 'GetAllOptionDetail': return $0.Empty();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'HealthChannel': return healthChannel(ctx, request as $0.Empty);
      case 'GetAllStockDetail': return getAllStockDetail(ctx, request as $0.Empty);
      case 'GetAllFutureDetail': return getAllFutureDetail(ctx, request as $0.Empty);
      case 'GetAllOptionDetail': return getAllOptionDetail(ctx, request as $0.Empty);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => BasicDataInterfaceServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => BasicDataInterfaceServiceBase$messageJson;
}

