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

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import '../google/protobuf/empty.pbjson.dart' as $0;
import 'future.pbjson.dart' as $2;
import 'option.pbjson.dart' as $3;
import 'stock.pbjson.dart' as $1;

const $core.Map<$core.String, $core.dynamic> BasicDataInterfaceServiceBase$json = {
  '1': 'BasicDataInterface',
  '2': [
    {'1': 'GetAllStockDetail', '2': '.google.protobuf.Empty', '3': '.basic.StockDetailList', '4': {}},
    {'1': 'GetAllFutureDetail', '2': '.google.protobuf.Empty', '3': '.basic.FutureDetailList', '4': {}},
    {'1': 'GetAllOptionDetail', '2': '.google.protobuf.Empty', '3': '.basic.OptionDetailList', '4': {}},
  ],
};

@$core.Deprecated('Use basicDataInterfaceServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> BasicDataInterfaceServiceBase$messageJson = {
  '.google.protobuf.Empty': $0.Empty$json,
  '.basic.StockDetailList': $1.StockDetailList$json,
  '.basic.StockDetail': $1.StockDetail$json,
  '.basic.FutureDetailList': $2.FutureDetailList$json,
  '.basic.FutureDetail': $2.FutureDetail$json,
  '.basic.OptionDetailList': $3.OptionDetailList$json,
  '.basic.OptionDetail': $3.OptionDetail$json,
};

/// Descriptor for `BasicDataInterface`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List basicDataInterfaceServiceDescriptor = $convert.base64Decode(
    'ChJCYXNpY0RhdGFJbnRlcmZhY2USRQoRR2V0QWxsU3RvY2tEZXRhaWwSFi5nb29nbGUucHJvdG'
    '9idWYuRW1wdHkaFi5iYXNpYy5TdG9ja0RldGFpbExpc3QiABJHChJHZXRBbGxGdXR1cmVEZXRh'
    'aWwSFi5nb29nbGUucHJvdG9idWYuRW1wdHkaFy5iYXNpYy5GdXR1cmVEZXRhaWxMaXN0IgASRw'
    'oSR2V0QWxsT3B0aW9uRGV0YWlsEhYuZ29vZ2xlLnByb3RvYnVmLkVtcHR5GhcuYmFzaWMuT3B0'
    'aW9uRGV0YWlsTGlzdCIA');

