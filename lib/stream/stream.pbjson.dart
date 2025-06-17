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

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use shioajiEventDescriptor instead')
const ShioajiEvent$json = {
  '1': 'ShioajiEvent',
  '2': [
    {'1': 'resp_code', '3': 1, '4': 1, '5': 3, '10': 'respCode'},
    {'1': 'event_code', '3': 2, '4': 1, '5': 3, '10': 'eventCode'},
    {'1': 'info', '3': 3, '4': 1, '5': 9, '10': 'info'},
    {'1': 'event', '3': 4, '4': 1, '5': 9, '10': 'event'},
    {'1': 'event_time', '3': 5, '4': 1, '5': 9, '10': 'eventTime'},
  ],
};

/// Descriptor for `ShioajiEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shioajiEventDescriptor = $convert.base64Decode(
    'CgxTaGlvYWppRXZlbnQSGwoJcmVzcF9jb2RlGAEgASgDUghyZXNwQ29kZRIdCgpldmVudF9jb2'
    'RlGAIgASgDUglldmVudENvZGUSEgoEaW5mbxgDIAEoCVIEaW5mbxIUCgVldmVudBgEIAEoCVIF'
    'ZXZlbnQSHQoKZXZlbnRfdGltZRgFIAEoCVIJZXZlbnRUaW1l');

@$core.Deprecated('Use subscribeFutureTickRequestDescriptor instead')
const SubscribeFutureTickRequest$json = {
  '1': 'SubscribeFutureTickRequest',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
  ],
};

/// Descriptor for `SubscribeFutureTickRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscribeFutureTickRequestDescriptor = $convert.base64Decode(
    'ChpTdWJzY3JpYmVGdXR1cmVUaWNrUmVxdWVzdBISCgRjb2RlGAEgASgJUgRjb2Rl');

@$core.Deprecated('Use futureTickDescriptor instead')
const FutureTick$json = {
  '1': 'FutureTick',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'date_time', '3': 2, '4': 1, '5': 9, '10': 'dateTime'},
    {'1': 'open', '3': 3, '4': 1, '5': 1, '10': 'open'},
    {'1': 'underlying_price', '3': 4, '4': 1, '5': 1, '10': 'underlyingPrice'},
    {'1': 'bid_side_total_vol', '3': 5, '4': 1, '5': 3, '10': 'bidSideTotalVol'},
    {'1': 'ask_side_total_vol', '3': 6, '4': 1, '5': 3, '10': 'askSideTotalVol'},
    {'1': 'avg_price', '3': 7, '4': 1, '5': 1, '10': 'avgPrice'},
    {'1': 'close', '3': 8, '4': 1, '5': 1, '10': 'close'},
    {'1': 'high', '3': 9, '4': 1, '5': 1, '10': 'high'},
    {'1': 'low', '3': 10, '4': 1, '5': 1, '10': 'low'},
    {'1': 'amount', '3': 11, '4': 1, '5': 1, '10': 'amount'},
    {'1': 'total_amount', '3': 12, '4': 1, '5': 1, '10': 'totalAmount'},
    {'1': 'volume', '3': 13, '4': 1, '5': 3, '10': 'volume'},
    {'1': 'total_volume', '3': 14, '4': 1, '5': 3, '10': 'totalVolume'},
    {'1': 'tick_type', '3': 15, '4': 1, '5': 3, '10': 'tickType'},
    {'1': 'chg_type', '3': 16, '4': 1, '5': 3, '10': 'chgType'},
    {'1': 'price_chg', '3': 17, '4': 1, '5': 1, '10': 'priceChg'},
    {'1': 'pct_chg', '3': 18, '4': 1, '5': 1, '10': 'pctChg'},
    {'1': 'simtrade', '3': 19, '4': 1, '5': 8, '10': 'simtrade'},
  ],
};

/// Descriptor for `FutureTick`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List futureTickDescriptor = $convert.base64Decode(
    'CgpGdXR1cmVUaWNrEhIKBGNvZGUYASABKAlSBGNvZGUSGwoJZGF0ZV90aW1lGAIgASgJUghkYX'
    'RlVGltZRISCgRvcGVuGAMgASgBUgRvcGVuEikKEHVuZGVybHlpbmdfcHJpY2UYBCABKAFSD3Vu'
    'ZGVybHlpbmdQcmljZRIrChJiaWRfc2lkZV90b3RhbF92b2wYBSABKANSD2JpZFNpZGVUb3RhbF'
    'ZvbBIrChJhc2tfc2lkZV90b3RhbF92b2wYBiABKANSD2Fza1NpZGVUb3RhbFZvbBIbCglhdmdf'
    'cHJpY2UYByABKAFSCGF2Z1ByaWNlEhQKBWNsb3NlGAggASgBUgVjbG9zZRISCgRoaWdoGAkgAS'
    'gBUgRoaWdoEhAKA2xvdxgKIAEoAVIDbG93EhYKBmFtb3VudBgLIAEoAVIGYW1vdW50EiEKDHRv'
    'dGFsX2Ftb3VudBgMIAEoAVILdG90YWxBbW91bnQSFgoGdm9sdW1lGA0gASgDUgZ2b2x1bWUSIQ'
    'oMdG90YWxfdm9sdW1lGA4gASgDUgt0b3RhbFZvbHVtZRIbCgl0aWNrX3R5cGUYDyABKANSCHRp'
    'Y2tUeXBlEhkKCGNoZ190eXBlGBAgASgDUgdjaGdUeXBlEhsKCXByaWNlX2NoZxgRIAEoAVIIcH'
    'JpY2VDaGcSFwoHcGN0X2NoZxgSIAEoAVIGcGN0Q2hnEhoKCHNpbXRyYWRlGBMgASgIUghzaW10'
    'cmFkZQ==');

const $core.Map<$core.String, $core.dynamic> StreamInterfaceServiceBase$json = {
  '1': 'StreamInterface',
  '2': [
    {'1': 'SubscribeFutureTick', '2': '.stream.SubscribeFutureTickRequest', '3': '.stream.FutureTick', '4': {}, '6': true},
  ],
};

@$core.Deprecated('Use streamInterfaceServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> StreamInterfaceServiceBase$messageJson = {
  '.stream.SubscribeFutureTickRequest': SubscribeFutureTickRequest$json,
  '.stream.FutureTick': FutureTick$json,
};

/// Descriptor for `StreamInterface`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List streamInterfaceServiceDescriptor = $convert.base64Decode(
    'Cg9TdHJlYW1JbnRlcmZhY2USUQoTU3Vic2NyaWJlRnV0dXJlVGljaxIiLnN0cmVhbS5TdWJzY3'
    'JpYmVGdXR1cmVUaWNrUmVxdWVzdBoSLnN0cmVhbS5GdXR1cmVUaWNrIgAwAQ==');

