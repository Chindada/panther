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
    {'1': 'GetAllStockDetail', '2': '.google.protobuf.Empty', '3': '.basic.StockDetail', '4': {}},
    {'1': 'GetAllFutureDetail', '2': '.google.protobuf.Empty', '3': '.basic.FutureDetail', '4': {}},
    {'1': 'GetAllOptionDetail', '2': '.google.protobuf.Empty', '3': '.basic.OptionDetail', '4': {}},
  ],
};

@$core.Deprecated('Use basicDataInterfaceServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> BasicDataInterfaceServiceBase$messageJson = {
  '.google.protobuf.Empty': $0.Empty$json,
  '.basic.StockDetail': $1.StockDetail$json,
  '.basic.FutureDetail': $2.FutureDetail$json,
  '.basic.OptionDetail': $3.OptionDetail$json,
};

/// Descriptor for `BasicDataInterface`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List basicDataInterfaceServiceDescriptor = $convert.base64Decode(
    'ChJCYXNpY0RhdGFJbnRlcmZhY2USQQoRR2V0QWxsU3RvY2tEZXRhaWwSFi5nb29nbGUucHJvdG'
    '9idWYuRW1wdHkaEi5iYXNpYy5TdG9ja0RldGFpbCIAEkMKEkdldEFsbEZ1dHVyZURldGFpbBIW'
    'Lmdvb2dsZS5wcm90b2J1Zi5FbXB0eRoTLmJhc2ljLkZ1dHVyZURldGFpbCIAEkMKEkdldEFsbE'
    '9wdGlvbkRldGFpbBIWLmdvb2dsZS5wcm90b2J1Zi5FbXB0eRoTLmJhc2ljLk9wdGlvbkRldGFp'
    'bCIA');

