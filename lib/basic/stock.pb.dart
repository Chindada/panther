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

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// {
///     "category": "03",
///     "code": "1321",
///     "currency": "TWD",
///     "day_trade": "Yes",
///     "delivery_date": "",
///     "delivery_month": "",
///     "exchange": "TSE",
///     "limit_down": 32.95,
///     "limit_up": 40.25,
///     "margin_trading_balance": 128,
///     "multiplier": 0,
///     "name": "\u5927\u6d0b",
///     "option_right": "",
///     "reference": 36.6,
///     "security_type": "STK",
///     "short_selling_balance": 45,
///     "strike_price": 0,
///     "symbol": "TSE1321",
///     "target_code": "",
///     "underlying_code": "",
///     "underlying_kind": "",
///     "unit": 1000,
///     "update_date": "2025/06/13"
/// }
class StockDetail extends $pb.GeneratedMessage {
  factory StockDetail({
    $core.String? category,
    $core.String? code,
    $core.String? currency,
    $core.String? dayTrade,
    $core.String? deliveryDate,
    $core.String? deliveryMonth,
    $core.String? exchange,
    $core.double? limitDown,
    $core.double? limitUp,
    $fixnum.Int64? marginTradingBalance,
    $fixnum.Int64? multiplier,
    $core.String? name,
    $core.String? optionRight,
    $core.double? reference,
    $core.String? securityType,
    $fixnum.Int64? shortSellingBalance,
    $fixnum.Int64? strikePrice,
    $core.String? symbol,
    $core.String? targetCode,
    $core.String? underlyingCode,
    $core.String? underlyingKind,
    $fixnum.Int64? unit,
    $core.String? updateDate,
  }) {
    final result = create();
    if (category != null) result.category = category;
    if (code != null) result.code = code;
    if (currency != null) result.currency = currency;
    if (dayTrade != null) result.dayTrade = dayTrade;
    if (deliveryDate != null) result.deliveryDate = deliveryDate;
    if (deliveryMonth != null) result.deliveryMonth = deliveryMonth;
    if (exchange != null) result.exchange = exchange;
    if (limitDown != null) result.limitDown = limitDown;
    if (limitUp != null) result.limitUp = limitUp;
    if (marginTradingBalance != null) result.marginTradingBalance = marginTradingBalance;
    if (multiplier != null) result.multiplier = multiplier;
    if (name != null) result.name = name;
    if (optionRight != null) result.optionRight = optionRight;
    if (reference != null) result.reference = reference;
    if (securityType != null) result.securityType = securityType;
    if (shortSellingBalance != null) result.shortSellingBalance = shortSellingBalance;
    if (strikePrice != null) result.strikePrice = strikePrice;
    if (symbol != null) result.symbol = symbol;
    if (targetCode != null) result.targetCode = targetCode;
    if (underlyingCode != null) result.underlyingCode = underlyingCode;
    if (underlyingKind != null) result.underlyingKind = underlyingKind;
    if (unit != null) result.unit = unit;
    if (updateDate != null) result.updateDate = updateDate;
    return result;
  }

  StockDetail._();

  factory StockDetail.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory StockDetail.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StockDetail', package: const $pb.PackageName(_omitMessageNames ? '' : 'basic'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'category')
    ..aOS(2, _omitFieldNames ? '' : 'code')
    ..aOS(3, _omitFieldNames ? '' : 'currency')
    ..aOS(4, _omitFieldNames ? '' : 'dayTrade')
    ..aOS(5, _omitFieldNames ? '' : 'deliveryDate')
    ..aOS(6, _omitFieldNames ? '' : 'deliveryMonth')
    ..aOS(7, _omitFieldNames ? '' : 'exchange')
    ..a<$core.double>(8, _omitFieldNames ? '' : 'limitDown', $pb.PbFieldType.OD)
    ..a<$core.double>(9, _omitFieldNames ? '' : 'limitUp', $pb.PbFieldType.OD)
    ..aInt64(10, _omitFieldNames ? '' : 'marginTradingBalance')
    ..aInt64(11, _omitFieldNames ? '' : 'multiplier')
    ..aOS(12, _omitFieldNames ? '' : 'name')
    ..aOS(13, _omitFieldNames ? '' : 'optionRight')
    ..a<$core.double>(14, _omitFieldNames ? '' : 'reference', $pb.PbFieldType.OD)
    ..aOS(15, _omitFieldNames ? '' : 'securityType')
    ..aInt64(16, _omitFieldNames ? '' : 'shortSellingBalance')
    ..aInt64(17, _omitFieldNames ? '' : 'strikePrice')
    ..aOS(18, _omitFieldNames ? '' : 'symbol')
    ..aOS(19, _omitFieldNames ? '' : 'targetCode')
    ..aOS(20, _omitFieldNames ? '' : 'underlyingCode')
    ..aOS(21, _omitFieldNames ? '' : 'underlyingKind')
    ..aInt64(22, _omitFieldNames ? '' : 'unit')
    ..aOS(23, _omitFieldNames ? '' : 'updateDate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StockDetail clone() => StockDetail()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StockDetail copyWith(void Function(StockDetail) updates) => super.copyWith((message) => updates(message as StockDetail)) as StockDetail;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StockDetail create() => StockDetail._();
  @$core.override
  StockDetail createEmptyInstance() => create();
  static $pb.PbList<StockDetail> createRepeated() => $pb.PbList<StockDetail>();
  @$core.pragma('dart2js:noInline')
  static StockDetail getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StockDetail>(create);
  static StockDetail? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get category => $_getSZ(0);
  @$pb.TagNumber(1)
  set category($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategory() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get currency => $_getSZ(2);
  @$pb.TagNumber(3)
  set currency($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCurrency() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrency() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get dayTrade => $_getSZ(3);
  @$pb.TagNumber(4)
  set dayTrade($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDayTrade() => $_has(3);
  @$pb.TagNumber(4)
  void clearDayTrade() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get deliveryDate => $_getSZ(4);
  @$pb.TagNumber(5)
  set deliveryDate($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDeliveryDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeliveryDate() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get deliveryMonth => $_getSZ(5);
  @$pb.TagNumber(6)
  set deliveryMonth($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasDeliveryMonth() => $_has(5);
  @$pb.TagNumber(6)
  void clearDeliveryMonth() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get exchange => $_getSZ(6);
  @$pb.TagNumber(7)
  set exchange($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasExchange() => $_has(6);
  @$pb.TagNumber(7)
  void clearExchange() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get limitDown => $_getN(7);
  @$pb.TagNumber(8)
  set limitDown($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasLimitDown() => $_has(7);
  @$pb.TagNumber(8)
  void clearLimitDown() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get limitUp => $_getN(8);
  @$pb.TagNumber(9)
  set limitUp($core.double value) => $_setDouble(8, value);
  @$pb.TagNumber(9)
  $core.bool hasLimitUp() => $_has(8);
  @$pb.TagNumber(9)
  void clearLimitUp() => $_clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get marginTradingBalance => $_getI64(9);
  @$pb.TagNumber(10)
  set marginTradingBalance($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(10)
  $core.bool hasMarginTradingBalance() => $_has(9);
  @$pb.TagNumber(10)
  void clearMarginTradingBalance() => $_clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get multiplier => $_getI64(10);
  @$pb.TagNumber(11)
  set multiplier($fixnum.Int64 value) => $_setInt64(10, value);
  @$pb.TagNumber(11)
  $core.bool hasMultiplier() => $_has(10);
  @$pb.TagNumber(11)
  void clearMultiplier() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get name => $_getSZ(11);
  @$pb.TagNumber(12)
  set name($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasName() => $_has(11);
  @$pb.TagNumber(12)
  void clearName() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get optionRight => $_getSZ(12);
  @$pb.TagNumber(13)
  set optionRight($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasOptionRight() => $_has(12);
  @$pb.TagNumber(13)
  void clearOptionRight() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.double get reference => $_getN(13);
  @$pb.TagNumber(14)
  set reference($core.double value) => $_setDouble(13, value);
  @$pb.TagNumber(14)
  $core.bool hasReference() => $_has(13);
  @$pb.TagNumber(14)
  void clearReference() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get securityType => $_getSZ(14);
  @$pb.TagNumber(15)
  set securityType($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasSecurityType() => $_has(14);
  @$pb.TagNumber(15)
  void clearSecurityType() => $_clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get shortSellingBalance => $_getI64(15);
  @$pb.TagNumber(16)
  set shortSellingBalance($fixnum.Int64 value) => $_setInt64(15, value);
  @$pb.TagNumber(16)
  $core.bool hasShortSellingBalance() => $_has(15);
  @$pb.TagNumber(16)
  void clearShortSellingBalance() => $_clearField(16);

  @$pb.TagNumber(17)
  $fixnum.Int64 get strikePrice => $_getI64(16);
  @$pb.TagNumber(17)
  set strikePrice($fixnum.Int64 value) => $_setInt64(16, value);
  @$pb.TagNumber(17)
  $core.bool hasStrikePrice() => $_has(16);
  @$pb.TagNumber(17)
  void clearStrikePrice() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get symbol => $_getSZ(17);
  @$pb.TagNumber(18)
  set symbol($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasSymbol() => $_has(17);
  @$pb.TagNumber(18)
  void clearSymbol() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get targetCode => $_getSZ(18);
  @$pb.TagNumber(19)
  set targetCode($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasTargetCode() => $_has(18);
  @$pb.TagNumber(19)
  void clearTargetCode() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get underlyingCode => $_getSZ(19);
  @$pb.TagNumber(20)
  set underlyingCode($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasUnderlyingCode() => $_has(19);
  @$pb.TagNumber(20)
  void clearUnderlyingCode() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get underlyingKind => $_getSZ(20);
  @$pb.TagNumber(21)
  set underlyingKind($core.String value) => $_setString(20, value);
  @$pb.TagNumber(21)
  $core.bool hasUnderlyingKind() => $_has(20);
  @$pb.TagNumber(21)
  void clearUnderlyingKind() => $_clearField(21);

  @$pb.TagNumber(22)
  $fixnum.Int64 get unit => $_getI64(21);
  @$pb.TagNumber(22)
  set unit($fixnum.Int64 value) => $_setInt64(21, value);
  @$pb.TagNumber(22)
  $core.bool hasUnit() => $_has(21);
  @$pb.TagNumber(22)
  void clearUnit() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.String get updateDate => $_getSZ(22);
  @$pb.TagNumber(23)
  set updateDate($core.String value) => $_setString(22, value);
  @$pb.TagNumber(23)
  $core.bool hasUpdateDate() => $_has(22);
  @$pb.TagNumber(23)
  void clearUpdateDate() => $_clearField(23);
}

class StockDetailList extends $pb.GeneratedMessage {
  factory StockDetailList({
    $core.Iterable<StockDetail>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  StockDetailList._();

  factory StockDetailList.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory StockDetailList.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StockDetailList', package: const $pb.PackageName(_omitMessageNames ? '' : 'basic'), createEmptyInstance: create)
    ..pc<StockDetail>(1, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM, subBuilder: StockDetail.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StockDetailList clone() => StockDetailList()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StockDetailList copyWith(void Function(StockDetailList) updates) => super.copyWith((message) => updates(message as StockDetailList)) as StockDetailList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StockDetailList create() => StockDetailList._();
  @$core.override
  StockDetailList createEmptyInstance() => create();
  static $pb.PbList<StockDetailList> createRepeated() => $pb.PbList<StockDetailList>();
  @$core.pragma('dart2js:noInline')
  static StockDetailList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StockDetailList>(create);
  static StockDetailList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<StockDetail> get list => $_getList(0);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
