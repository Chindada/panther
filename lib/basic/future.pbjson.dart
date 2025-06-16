//
//  Generated code. Do not modify.
//  source: basic/future.proto
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

@$core.Deprecated('Use futureDetailDescriptor instead')
const FutureDetail$json = {
  '1': 'FutureDetail',
  '2': [
    {'1': 'category', '3': 1, '4': 1, '5': 9, '10': 'category'},
    {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    {'1': 'currency', '3': 3, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'day_trade', '3': 4, '4': 1, '5': 9, '10': 'dayTrade'},
    {'1': 'delivery_date', '3': 5, '4': 1, '5': 9, '10': 'deliveryDate'},
    {'1': 'delivery_month', '3': 6, '4': 1, '5': 9, '10': 'deliveryMonth'},
    {'1': 'exchange', '3': 7, '4': 1, '5': 9, '10': 'exchange'},
    {'1': 'limit_down', '3': 8, '4': 1, '5': 1, '10': 'limitDown'},
    {'1': 'limit_up', '3': 9, '4': 1, '5': 1, '10': 'limitUp'},
    {'1': 'margin_trading_balance', '3': 10, '4': 1, '5': 3, '10': 'marginTradingBalance'},
    {'1': 'multiplier', '3': 11, '4': 1, '5': 3, '10': 'multiplier'},
    {'1': 'name', '3': 12, '4': 1, '5': 9, '10': 'name'},
    {'1': 'option_right', '3': 13, '4': 1, '5': 9, '10': 'optionRight'},
    {'1': 'reference', '3': 14, '4': 1, '5': 1, '10': 'reference'},
    {'1': 'security_type', '3': 15, '4': 1, '5': 9, '10': 'securityType'},
    {'1': 'short_selling_balance', '3': 16, '4': 1, '5': 3, '10': 'shortSellingBalance'},
    {'1': 'strike_price', '3': 17, '4': 1, '5': 3, '10': 'strikePrice'},
    {'1': 'symbol', '3': 18, '4': 1, '5': 9, '10': 'symbol'},
    {'1': 'target_code', '3': 19, '4': 1, '5': 9, '10': 'targetCode'},
    {'1': 'underlying_code', '3': 20, '4': 1, '5': 9, '10': 'underlyingCode'},
    {'1': 'underlying_kind', '3': 21, '4': 1, '5': 9, '10': 'underlyingKind'},
    {'1': 'unit', '3': 22, '4': 1, '5': 3, '10': 'unit'},
    {'1': 'update_date', '3': 23, '4': 1, '5': 9, '10': 'updateDate'},
  ],
};

/// Descriptor for `FutureDetail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List futureDetailDescriptor = $convert.base64Decode(
    'CgxGdXR1cmVEZXRhaWwSGgoIY2F0ZWdvcnkYASABKAlSCGNhdGVnb3J5EhIKBGNvZGUYAiABKA'
    'lSBGNvZGUSGgoIY3VycmVuY3kYAyABKAlSCGN1cnJlbmN5EhsKCWRheV90cmFkZRgEIAEoCVII'
    'ZGF5VHJhZGUSIwoNZGVsaXZlcnlfZGF0ZRgFIAEoCVIMZGVsaXZlcnlEYXRlEiUKDmRlbGl2ZX'
    'J5X21vbnRoGAYgASgJUg1kZWxpdmVyeU1vbnRoEhoKCGV4Y2hhbmdlGAcgASgJUghleGNoYW5n'
    'ZRIdCgpsaW1pdF9kb3duGAggASgBUglsaW1pdERvd24SGQoIbGltaXRfdXAYCSABKAFSB2xpbW'
    'l0VXASNAoWbWFyZ2luX3RyYWRpbmdfYmFsYW5jZRgKIAEoA1IUbWFyZ2luVHJhZGluZ0JhbGFu'
    'Y2USHgoKbXVsdGlwbGllchgLIAEoA1IKbXVsdGlwbGllchISCgRuYW1lGAwgASgJUgRuYW1lEi'
    'EKDG9wdGlvbl9yaWdodBgNIAEoCVILb3B0aW9uUmlnaHQSHAoJcmVmZXJlbmNlGA4gASgBUgly'
    'ZWZlcmVuY2USIwoNc2VjdXJpdHlfdHlwZRgPIAEoCVIMc2VjdXJpdHlUeXBlEjIKFXNob3J0X3'
    'NlbGxpbmdfYmFsYW5jZRgQIAEoA1ITc2hvcnRTZWxsaW5nQmFsYW5jZRIhCgxzdHJpa2VfcHJp'
    'Y2UYESABKANSC3N0cmlrZVByaWNlEhYKBnN5bWJvbBgSIAEoCVIGc3ltYm9sEh8KC3RhcmdldF'
    '9jb2RlGBMgASgJUgp0YXJnZXRDb2RlEicKD3VuZGVybHlpbmdfY29kZRgUIAEoCVIOdW5kZXJs'
    'eWluZ0NvZGUSJwoPdW5kZXJseWluZ19raW5kGBUgASgJUg51bmRlcmx5aW5nS2luZBISCgR1bm'
    'l0GBYgASgDUgR1bml0Eh8KC3VwZGF0ZV9kYXRlGBcgASgJUgp1cGRhdGVEYXRl');

@$core.Deprecated('Use futureDetailListDescriptor instead')
const FutureDetailList$json = {
  '1': 'FutureDetailList',
  '2': [
    {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.basic.FutureDetail', '10': 'list'},
  ],
};

/// Descriptor for `FutureDetailList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List futureDetailListDescriptor = $convert.base64Decode(
    'ChBGdXR1cmVEZXRhaWxMaXN0EicKBGxpc3QYASADKAsyEy5iYXNpYy5GdXR1cmVEZXRhaWxSBG'
    'xpc3Q=');

