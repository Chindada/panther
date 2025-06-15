//
//  Generated code. Do not modify.
//  source: basic/stock.proto
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

@$core.Deprecated('Use stockDetailDescriptor instead')
const StockDetail$json = {
  '1': 'StockDetail',
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

/// Descriptor for `StockDetail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stockDetailDescriptor = $convert.base64Decode(
    'CgtTdG9ja0RldGFpbBIaCghjYXRlZ29yeRgBIAEoCVIIY2F0ZWdvcnkSEgoEY29kZRgCIAEoCV'
    'IEY29kZRIaCghjdXJyZW5jeRgDIAEoCVIIY3VycmVuY3kSGwoJZGF5X3RyYWRlGAQgASgJUghk'
    'YXlUcmFkZRIjCg1kZWxpdmVyeV9kYXRlGAUgASgJUgxkZWxpdmVyeURhdGUSJQoOZGVsaXZlcn'
    'lfbW9udGgYBiABKAlSDWRlbGl2ZXJ5TW9udGgSGgoIZXhjaGFuZ2UYByABKAlSCGV4Y2hhbmdl'
    'Eh0KCmxpbWl0X2Rvd24YCCABKAFSCWxpbWl0RG93bhIZCghsaW1pdF91cBgJIAEoAVIHbGltaX'
    'RVcBI0ChZtYXJnaW5fdHJhZGluZ19iYWxhbmNlGAogASgDUhRtYXJnaW5UcmFkaW5nQmFsYW5j'
    'ZRIeCgptdWx0aXBsaWVyGAsgASgDUgptdWx0aXBsaWVyEhIKBG5hbWUYDCABKAlSBG5hbWUSIQ'
    'oMb3B0aW9uX3JpZ2h0GA0gASgJUgtvcHRpb25SaWdodBIcCglyZWZlcmVuY2UYDiABKAFSCXJl'
    'ZmVyZW5jZRIjCg1zZWN1cml0eV90eXBlGA8gASgJUgxzZWN1cml0eVR5cGUSMgoVc2hvcnRfc2'
    'VsbGluZ19iYWxhbmNlGBAgASgDUhNzaG9ydFNlbGxpbmdCYWxhbmNlEiEKDHN0cmlrZV9wcmlj'
    'ZRgRIAEoA1ILc3RyaWtlUHJpY2USFgoGc3ltYm9sGBIgASgJUgZzeW1ib2wSHwoLdGFyZ2V0X2'
    'NvZGUYEyABKAlSCnRhcmdldENvZGUSJwoPdW5kZXJseWluZ19jb2RlGBQgASgJUg51bmRlcmx5'
    'aW5nQ29kZRInCg91bmRlcmx5aW5nX2tpbmQYFSABKAlSDnVuZGVybHlpbmdLaW5kEhIKBHVuaX'
    'QYFiABKANSBHVuaXQSHwoLdXBkYXRlX2RhdGUYFyABKAlSCnVwZGF0ZURhdGU=');

