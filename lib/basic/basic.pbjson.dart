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

const $core.Map<$core.String, $core.dynamic> BasicInterfaceServiceBase$json = {
  '1': 'BasicInterface',
  '2': [
    {'1': 'GetAllStockDetail', '2': '.google.protobuf.Empty', '3': '.basic.StockDetailList', '4': {}},
    {'1': 'GetAllFutureDetail', '2': '.google.protobuf.Empty', '3': '.basic.FutureDetailList', '4': {}},
    {'1': 'GetAllOptionDetail', '2': '.google.protobuf.Empty', '3': '.basic.OptionDetailList', '4': {}},
  ],
};

@$core.Deprecated('Use basicInterfaceServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> BasicInterfaceServiceBase$messageJson = {
  '.google.protobuf.Empty': $0.Empty$json,
  '.basic.StockDetailList': $1.StockDetailList$json,
  '.basic.StockDetail': $1.StockDetail$json,
  '.basic.FutureDetailList': $2.FutureDetailList$json,
  '.basic.FutureDetail': $2.FutureDetail$json,
  '.basic.OptionDetailList': $3.OptionDetailList$json,
  '.basic.OptionDetail': $3.OptionDetail$json,
};

/// Descriptor for `BasicInterface`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List basicInterfaceServiceDescriptor = $convert.base64Decode(
    'Cg5CYXNpY0ludGVyZmFjZRJFChFHZXRBbGxTdG9ja0RldGFpbBIWLmdvb2dsZS5wcm90b2J1Zi'
    '5FbXB0eRoWLmJhc2ljLlN0b2NrRGV0YWlsTGlzdCIAEkcKEkdldEFsbEZ1dHVyZURldGFpbBIW'
    'Lmdvb2dsZS5wcm90b2J1Zi5FbXB0eRoXLmJhc2ljLkZ1dHVyZURldGFpbExpc3QiABJHChJHZX'
    'RBbGxPcHRpb25EZXRhaWwSFi5nb29nbGUucHJvdG9idWYuRW1wdHkaFy5iYXNpYy5PcHRpb25E'
    'ZXRhaWxMaXN0IgA=');

