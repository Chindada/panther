//
//  Generated code. Do not modify.
//  source: stream/stream.proto
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
import 'stream.pb.dart' as $4;
import 'stream.pbjson.dart';

export 'stream.pb.dart';

abstract class StreamInterfaceServiceBase extends $pb.GeneratedService {
  $async.Future<$4.ShioajiEvent> subscribeShioajiEvent($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$4.FutureTick> subscribeFutureTick($pb.ServerContext ctx, $4.SubscribeFutureRequest request);
  $async.Future<$4.FutureBidAsk> subscribeFutureBidAsk($pb.ServerContext ctx, $4.SubscribeFutureRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'SubscribeShioajiEvent': return $0.Empty();
      case 'SubscribeFutureTick': return $4.SubscribeFutureRequest();
      case 'SubscribeFutureBidAsk': return $4.SubscribeFutureRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'SubscribeShioajiEvent': return subscribeShioajiEvent(ctx, request as $0.Empty);
      case 'SubscribeFutureTick': return subscribeFutureTick(ctx, request as $4.SubscribeFutureRequest);
      case 'SubscribeFutureBidAsk': return subscribeFutureBidAsk(ctx, request as $4.SubscribeFutureRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => StreamInterfaceServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => StreamInterfaceServiceBase$messageJson;
}

