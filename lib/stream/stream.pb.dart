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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/empty.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ShioajiEvent extends $pb.GeneratedMessage {
  factory ShioajiEvent({
    $fixnum.Int64? respCode,
    $fixnum.Int64? eventCode,
    $core.String? info,
    $core.String? event,
    $core.String? eventTime,
  }) {
    final result = create();
    if (respCode != null) result.respCode = respCode;
    if (eventCode != null) result.eventCode = eventCode;
    if (info != null) result.info = info;
    if (event != null) result.event = event;
    if (eventTime != null) result.eventTime = eventTime;
    return result;
  }

  ShioajiEvent._();

  factory ShioajiEvent.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ShioajiEvent.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShioajiEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'stream'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'respCode')
    ..aInt64(2, _omitFieldNames ? '' : 'eventCode')
    ..aOS(3, _omitFieldNames ? '' : 'info')
    ..aOS(4, _omitFieldNames ? '' : 'event')
    ..aOS(5, _omitFieldNames ? '' : 'eventTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShioajiEvent clone() => ShioajiEvent()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShioajiEvent copyWith(void Function(ShioajiEvent) updates) => super.copyWith((message) => updates(message as ShioajiEvent)) as ShioajiEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShioajiEvent create() => ShioajiEvent._();
  @$core.override
  ShioajiEvent createEmptyInstance() => create();
  static $pb.PbList<ShioajiEvent> createRepeated() => $pb.PbList<ShioajiEvent>();
  @$core.pragma('dart2js:noInline')
  static ShioajiEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShioajiEvent>(create);
  static ShioajiEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get respCode => $_getI64(0);
  @$pb.TagNumber(1)
  set respCode($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRespCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearRespCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get eventCode => $_getI64(1);
  @$pb.TagNumber(2)
  set eventCode($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEventCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventCode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get info => $_getSZ(2);
  @$pb.TagNumber(3)
  set info($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearInfo() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get event => $_getSZ(3);
  @$pb.TagNumber(4)
  set event($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEvent() => $_has(3);
  @$pb.TagNumber(4)
  void clearEvent() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get eventTime => $_getSZ(4);
  @$pb.TagNumber(5)
  set eventTime($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasEventTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearEventTime() => $_clearField(5);
}

class SubscribeFutureRequest extends $pb.GeneratedMessage {
  factory SubscribeFutureRequest({
    $core.String? code,
  }) {
    final result = create();
    if (code != null) result.code = code;
    return result;
  }

  SubscribeFutureRequest._();

  factory SubscribeFutureRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SubscribeFutureRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubscribeFutureRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'stream'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SubscribeFutureRequest clone() => SubscribeFutureRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SubscribeFutureRequest copyWith(void Function(SubscribeFutureRequest) updates) => super.copyWith((message) => updates(message as SubscribeFutureRequest)) as SubscribeFutureRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubscribeFutureRequest create() => SubscribeFutureRequest._();
  @$core.override
  SubscribeFutureRequest createEmptyInstance() => create();
  static $pb.PbList<SubscribeFutureRequest> createRepeated() => $pb.PbList<SubscribeFutureRequest>();
  @$core.pragma('dart2js:noInline')
  static SubscribeFutureRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscribeFutureRequest>(create);
  static SubscribeFutureRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);
}

class FutureTick extends $pb.GeneratedMessage {
  factory FutureTick({
    $core.String? code,
    $core.String? dateTime,
    $core.double? open,
    $core.double? underlyingPrice,
    $fixnum.Int64? bidSideTotalVol,
    $fixnum.Int64? askSideTotalVol,
    $core.double? avgPrice,
    $core.double? close,
    $core.double? high,
    $core.double? low,
    $core.double? amount,
    $core.double? totalAmount,
    $fixnum.Int64? volume,
    $fixnum.Int64? totalVolume,
    $fixnum.Int64? tickType,
    $fixnum.Int64? chgType,
    $core.double? priceChg,
    $core.double? pctChg,
    $core.bool? simtrade,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (dateTime != null) result.dateTime = dateTime;
    if (open != null) result.open = open;
    if (underlyingPrice != null) result.underlyingPrice = underlyingPrice;
    if (bidSideTotalVol != null) result.bidSideTotalVol = bidSideTotalVol;
    if (askSideTotalVol != null) result.askSideTotalVol = askSideTotalVol;
    if (avgPrice != null) result.avgPrice = avgPrice;
    if (close != null) result.close = close;
    if (high != null) result.high = high;
    if (low != null) result.low = low;
    if (amount != null) result.amount = amount;
    if (totalAmount != null) result.totalAmount = totalAmount;
    if (volume != null) result.volume = volume;
    if (totalVolume != null) result.totalVolume = totalVolume;
    if (tickType != null) result.tickType = tickType;
    if (chgType != null) result.chgType = chgType;
    if (priceChg != null) result.priceChg = priceChg;
    if (pctChg != null) result.pctChg = pctChg;
    if (simtrade != null) result.simtrade = simtrade;
    return result;
  }

  FutureTick._();

  factory FutureTick.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory FutureTick.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FutureTick', package: const $pb.PackageName(_omitMessageNames ? '' : 'stream'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'dateTime')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'open', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'underlyingPrice', $pb.PbFieldType.OD)
    ..aInt64(5, _omitFieldNames ? '' : 'bidSideTotalVol')
    ..aInt64(6, _omitFieldNames ? '' : 'askSideTotalVol')
    ..a<$core.double>(7, _omitFieldNames ? '' : 'avgPrice', $pb.PbFieldType.OD)
    ..a<$core.double>(8, _omitFieldNames ? '' : 'close', $pb.PbFieldType.OD)
    ..a<$core.double>(9, _omitFieldNames ? '' : 'high', $pb.PbFieldType.OD)
    ..a<$core.double>(10, _omitFieldNames ? '' : 'low', $pb.PbFieldType.OD)
    ..a<$core.double>(11, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OD)
    ..a<$core.double>(12, _omitFieldNames ? '' : 'totalAmount', $pb.PbFieldType.OD)
    ..aInt64(13, _omitFieldNames ? '' : 'volume')
    ..aInt64(14, _omitFieldNames ? '' : 'totalVolume')
    ..aInt64(15, _omitFieldNames ? '' : 'tickType')
    ..aInt64(16, _omitFieldNames ? '' : 'chgType')
    ..a<$core.double>(17, _omitFieldNames ? '' : 'priceChg', $pb.PbFieldType.OD)
    ..a<$core.double>(18, _omitFieldNames ? '' : 'pctChg', $pb.PbFieldType.OD)
    ..aOB(19, _omitFieldNames ? '' : 'simtrade')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FutureTick clone() => FutureTick()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FutureTick copyWith(void Function(FutureTick) updates) => super.copyWith((message) => updates(message as FutureTick)) as FutureTick;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FutureTick create() => FutureTick._();
  @$core.override
  FutureTick createEmptyInstance() => create();
  static $pb.PbList<FutureTick> createRepeated() => $pb.PbList<FutureTick>();
  @$core.pragma('dart2js:noInline')
  static FutureTick getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FutureTick>(create);
  static FutureTick? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get dateTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set dateTime($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDateTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearDateTime() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get open => $_getN(2);
  @$pb.TagNumber(3)
  set open($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOpen() => $_has(2);
  @$pb.TagNumber(3)
  void clearOpen() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get underlyingPrice => $_getN(3);
  @$pb.TagNumber(4)
  set underlyingPrice($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUnderlyingPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnderlyingPrice() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get bidSideTotalVol => $_getI64(4);
  @$pb.TagNumber(5)
  set bidSideTotalVol($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBidSideTotalVol() => $_has(4);
  @$pb.TagNumber(5)
  void clearBidSideTotalVol() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get askSideTotalVol => $_getI64(5);
  @$pb.TagNumber(6)
  set askSideTotalVol($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAskSideTotalVol() => $_has(5);
  @$pb.TagNumber(6)
  void clearAskSideTotalVol() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get avgPrice => $_getN(6);
  @$pb.TagNumber(7)
  set avgPrice($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasAvgPrice() => $_has(6);
  @$pb.TagNumber(7)
  void clearAvgPrice() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get close => $_getN(7);
  @$pb.TagNumber(8)
  set close($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasClose() => $_has(7);
  @$pb.TagNumber(8)
  void clearClose() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get high => $_getN(8);
  @$pb.TagNumber(9)
  set high($core.double value) => $_setDouble(8, value);
  @$pb.TagNumber(9)
  $core.bool hasHigh() => $_has(8);
  @$pb.TagNumber(9)
  void clearHigh() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.double get low => $_getN(9);
  @$pb.TagNumber(10)
  set low($core.double value) => $_setDouble(9, value);
  @$pb.TagNumber(10)
  $core.bool hasLow() => $_has(9);
  @$pb.TagNumber(10)
  void clearLow() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.double get amount => $_getN(10);
  @$pb.TagNumber(11)
  set amount($core.double value) => $_setDouble(10, value);
  @$pb.TagNumber(11)
  $core.bool hasAmount() => $_has(10);
  @$pb.TagNumber(11)
  void clearAmount() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.double get totalAmount => $_getN(11);
  @$pb.TagNumber(12)
  set totalAmount($core.double value) => $_setDouble(11, value);
  @$pb.TagNumber(12)
  $core.bool hasTotalAmount() => $_has(11);
  @$pb.TagNumber(12)
  void clearTotalAmount() => $_clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get volume => $_getI64(12);
  @$pb.TagNumber(13)
  set volume($fixnum.Int64 value) => $_setInt64(12, value);
  @$pb.TagNumber(13)
  $core.bool hasVolume() => $_has(12);
  @$pb.TagNumber(13)
  void clearVolume() => $_clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get totalVolume => $_getI64(13);
  @$pb.TagNumber(14)
  set totalVolume($fixnum.Int64 value) => $_setInt64(13, value);
  @$pb.TagNumber(14)
  $core.bool hasTotalVolume() => $_has(13);
  @$pb.TagNumber(14)
  void clearTotalVolume() => $_clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get tickType => $_getI64(14);
  @$pb.TagNumber(15)
  set tickType($fixnum.Int64 value) => $_setInt64(14, value);
  @$pb.TagNumber(15)
  $core.bool hasTickType() => $_has(14);
  @$pb.TagNumber(15)
  void clearTickType() => $_clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get chgType => $_getI64(15);
  @$pb.TagNumber(16)
  set chgType($fixnum.Int64 value) => $_setInt64(15, value);
  @$pb.TagNumber(16)
  $core.bool hasChgType() => $_has(15);
  @$pb.TagNumber(16)
  void clearChgType() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.double get priceChg => $_getN(16);
  @$pb.TagNumber(17)
  set priceChg($core.double value) => $_setDouble(16, value);
  @$pb.TagNumber(17)
  $core.bool hasPriceChg() => $_has(16);
  @$pb.TagNumber(17)
  void clearPriceChg() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.double get pctChg => $_getN(17);
  @$pb.TagNumber(18)
  set pctChg($core.double value) => $_setDouble(17, value);
  @$pb.TagNumber(18)
  $core.bool hasPctChg() => $_has(17);
  @$pb.TagNumber(18)
  void clearPctChg() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.bool get simtrade => $_getBF(18);
  @$pb.TagNumber(19)
  set simtrade($core.bool value) => $_setBool(18, value);
  @$pb.TagNumber(19)
  $core.bool hasSimtrade() => $_has(18);
  @$pb.TagNumber(19)
  void clearSimtrade() => $_clearField(19);
}

class FutureBidAsk extends $pb.GeneratedMessage {
  factory FutureBidAsk({
    $core.String? code,
    $core.String? dateTime,
    $fixnum.Int64? bidTotalVol,
    $fixnum.Int64? askTotalVol,
    $core.Iterable<$core.double>? bidPrice,
    $core.Iterable<$fixnum.Int64>? bidVolume,
    $core.Iterable<$fixnum.Int64>? diffBidVol,
    $core.Iterable<$core.double>? askPrice,
    $core.Iterable<$fixnum.Int64>? askVolume,
    $core.Iterable<$fixnum.Int64>? diffAskVol,
    $core.double? firstDerivedBidPrice,
    $core.double? firstDerivedAskPrice,
    $fixnum.Int64? firstDerivedBidVol,
    $fixnum.Int64? firstDerivedAskVol,
    $core.double? underlyingPrice,
    $core.bool? simtrade,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (dateTime != null) result.dateTime = dateTime;
    if (bidTotalVol != null) result.bidTotalVol = bidTotalVol;
    if (askTotalVol != null) result.askTotalVol = askTotalVol;
    if (bidPrice != null) result.bidPrice.addAll(bidPrice);
    if (bidVolume != null) result.bidVolume.addAll(bidVolume);
    if (diffBidVol != null) result.diffBidVol.addAll(diffBidVol);
    if (askPrice != null) result.askPrice.addAll(askPrice);
    if (askVolume != null) result.askVolume.addAll(askVolume);
    if (diffAskVol != null) result.diffAskVol.addAll(diffAskVol);
    if (firstDerivedBidPrice != null) result.firstDerivedBidPrice = firstDerivedBidPrice;
    if (firstDerivedAskPrice != null) result.firstDerivedAskPrice = firstDerivedAskPrice;
    if (firstDerivedBidVol != null) result.firstDerivedBidVol = firstDerivedBidVol;
    if (firstDerivedAskVol != null) result.firstDerivedAskVol = firstDerivedAskVol;
    if (underlyingPrice != null) result.underlyingPrice = underlyingPrice;
    if (simtrade != null) result.simtrade = simtrade;
    return result;
  }

  FutureBidAsk._();

  factory FutureBidAsk.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory FutureBidAsk.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FutureBidAsk', package: const $pb.PackageName(_omitMessageNames ? '' : 'stream'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'dateTime')
    ..aInt64(3, _omitFieldNames ? '' : 'bidTotalVol')
    ..aInt64(4, _omitFieldNames ? '' : 'askTotalVol')
    ..p<$core.double>(5, _omitFieldNames ? '' : 'bidPrice', $pb.PbFieldType.KD)
    ..p<$fixnum.Int64>(6, _omitFieldNames ? '' : 'bidVolume', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(7, _omitFieldNames ? '' : 'diffBidVol', $pb.PbFieldType.K6)
    ..p<$core.double>(8, _omitFieldNames ? '' : 'askPrice', $pb.PbFieldType.KD)
    ..p<$fixnum.Int64>(9, _omitFieldNames ? '' : 'askVolume', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(10, _omitFieldNames ? '' : 'diffAskVol', $pb.PbFieldType.K6)
    ..a<$core.double>(11, _omitFieldNames ? '' : 'firstDerivedBidPrice', $pb.PbFieldType.OD)
    ..a<$core.double>(12, _omitFieldNames ? '' : 'firstDerivedAskPrice', $pb.PbFieldType.OD)
    ..aInt64(13, _omitFieldNames ? '' : 'firstDerivedBidVol')
    ..aInt64(14, _omitFieldNames ? '' : 'firstDerivedAskVol')
    ..a<$core.double>(15, _omitFieldNames ? '' : 'underlyingPrice', $pb.PbFieldType.OD)
    ..aOB(16, _omitFieldNames ? '' : 'simtrade')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FutureBidAsk clone() => FutureBidAsk()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FutureBidAsk copyWith(void Function(FutureBidAsk) updates) => super.copyWith((message) => updates(message as FutureBidAsk)) as FutureBidAsk;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FutureBidAsk create() => FutureBidAsk._();
  @$core.override
  FutureBidAsk createEmptyInstance() => create();
  static $pb.PbList<FutureBidAsk> createRepeated() => $pb.PbList<FutureBidAsk>();
  @$core.pragma('dart2js:noInline')
  static FutureBidAsk getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FutureBidAsk>(create);
  static FutureBidAsk? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get dateTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set dateTime($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDateTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearDateTime() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get bidTotalVol => $_getI64(2);
  @$pb.TagNumber(3)
  set bidTotalVol($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBidTotalVol() => $_has(2);
  @$pb.TagNumber(3)
  void clearBidTotalVol() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get askTotalVol => $_getI64(3);
  @$pb.TagNumber(4)
  set askTotalVol($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAskTotalVol() => $_has(3);
  @$pb.TagNumber(4)
  void clearAskTotalVol() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$core.double> get bidPrice => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<$fixnum.Int64> get bidVolume => $_getList(5);

  @$pb.TagNumber(7)
  $pb.PbList<$fixnum.Int64> get diffBidVol => $_getList(6);

  @$pb.TagNumber(8)
  $pb.PbList<$core.double> get askPrice => $_getList(7);

  @$pb.TagNumber(9)
  $pb.PbList<$fixnum.Int64> get askVolume => $_getList(8);

  @$pb.TagNumber(10)
  $pb.PbList<$fixnum.Int64> get diffAskVol => $_getList(9);

  @$pb.TagNumber(11)
  $core.double get firstDerivedBidPrice => $_getN(10);
  @$pb.TagNumber(11)
  set firstDerivedBidPrice($core.double value) => $_setDouble(10, value);
  @$pb.TagNumber(11)
  $core.bool hasFirstDerivedBidPrice() => $_has(10);
  @$pb.TagNumber(11)
  void clearFirstDerivedBidPrice() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.double get firstDerivedAskPrice => $_getN(11);
  @$pb.TagNumber(12)
  set firstDerivedAskPrice($core.double value) => $_setDouble(11, value);
  @$pb.TagNumber(12)
  $core.bool hasFirstDerivedAskPrice() => $_has(11);
  @$pb.TagNumber(12)
  void clearFirstDerivedAskPrice() => $_clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get firstDerivedBidVol => $_getI64(12);
  @$pb.TagNumber(13)
  set firstDerivedBidVol($fixnum.Int64 value) => $_setInt64(12, value);
  @$pb.TagNumber(13)
  $core.bool hasFirstDerivedBidVol() => $_has(12);
  @$pb.TagNumber(13)
  void clearFirstDerivedBidVol() => $_clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get firstDerivedAskVol => $_getI64(13);
  @$pb.TagNumber(14)
  set firstDerivedAskVol($fixnum.Int64 value) => $_setInt64(13, value);
  @$pb.TagNumber(14)
  $core.bool hasFirstDerivedAskVol() => $_has(13);
  @$pb.TagNumber(14)
  void clearFirstDerivedAskVol() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.double get underlyingPrice => $_getN(14);
  @$pb.TagNumber(15)
  set underlyingPrice($core.double value) => $_setDouble(14, value);
  @$pb.TagNumber(15)
  $core.bool hasUnderlyingPrice() => $_has(14);
  @$pb.TagNumber(15)
  void clearUnderlyingPrice() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.bool get simtrade => $_getBF(15);
  @$pb.TagNumber(16)
  set simtrade($core.bool value) => $_setBool(15, value);
  @$pb.TagNumber(16)
  $core.bool hasSimtrade() => $_has(15);
  @$pb.TagNumber(16)
  void clearSimtrade() => $_clearField(16);
}

class StreamInterfaceApi {
  final $pb.RpcClient _client;

  StreamInterfaceApi(this._client);

  $async.Future<ShioajiEvent> subscribeShioajiEvent($pb.ClientContext? ctx, $0.Empty request) =>
    _client.invoke<ShioajiEvent>(ctx, 'StreamInterface', 'SubscribeShioajiEvent', request, ShioajiEvent())
  ;
  $async.Future<FutureTick> subscribeFutureTick($pb.ClientContext? ctx, SubscribeFutureRequest request) =>
    _client.invoke<FutureTick>(ctx, 'StreamInterface', 'SubscribeFutureTick', request, FutureTick())
  ;
  $async.Future<FutureBidAsk> subscribeFutureBidAsk($pb.ClientContext? ctx, SubscribeFutureRequest request) =>
    _client.invoke<FutureBidAsk>(ctx, 'StreamInterface', 'SubscribeFutureBidAsk', request, FutureBidAsk())
  ;
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
