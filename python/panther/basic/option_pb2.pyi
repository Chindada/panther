from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Optional as _Optional

DESCRIPTOR: _descriptor.FileDescriptor

class OptionDetail(_message.Message):
    __slots__ = ("category", "code", "currency", "day_trade", "delivery_date", "delivery_month", "exchange", "limit_down", "limit_up", "margin_trading_balance", "multiplier", "name", "option_right", "reference", "security_type", "short_selling_balance", "strike_price", "symbol", "target_code", "underlying_code", "underlying_kind", "unit", "update_date")
    CATEGORY_FIELD_NUMBER: _ClassVar[int]
    CODE_FIELD_NUMBER: _ClassVar[int]
    CURRENCY_FIELD_NUMBER: _ClassVar[int]
    DAY_TRADE_FIELD_NUMBER: _ClassVar[int]
    DELIVERY_DATE_FIELD_NUMBER: _ClassVar[int]
    DELIVERY_MONTH_FIELD_NUMBER: _ClassVar[int]
    EXCHANGE_FIELD_NUMBER: _ClassVar[int]
    LIMIT_DOWN_FIELD_NUMBER: _ClassVar[int]
    LIMIT_UP_FIELD_NUMBER: _ClassVar[int]
    MARGIN_TRADING_BALANCE_FIELD_NUMBER: _ClassVar[int]
    MULTIPLIER_FIELD_NUMBER: _ClassVar[int]
    NAME_FIELD_NUMBER: _ClassVar[int]
    OPTION_RIGHT_FIELD_NUMBER: _ClassVar[int]
    REFERENCE_FIELD_NUMBER: _ClassVar[int]
    SECURITY_TYPE_FIELD_NUMBER: _ClassVar[int]
    SHORT_SELLING_BALANCE_FIELD_NUMBER: _ClassVar[int]
    STRIKE_PRICE_FIELD_NUMBER: _ClassVar[int]
    SYMBOL_FIELD_NUMBER: _ClassVar[int]
    TARGET_CODE_FIELD_NUMBER: _ClassVar[int]
    UNDERLYING_CODE_FIELD_NUMBER: _ClassVar[int]
    UNDERLYING_KIND_FIELD_NUMBER: _ClassVar[int]
    UNIT_FIELD_NUMBER: _ClassVar[int]
    UPDATE_DATE_FIELD_NUMBER: _ClassVar[int]
    category: str
    code: str
    currency: str
    day_trade: str
    delivery_date: str
    delivery_month: str
    exchange: str
    limit_down: float
    limit_up: float
    margin_trading_balance: int
    multiplier: int
    name: str
    option_right: str
    reference: float
    security_type: str
    short_selling_balance: int
    strike_price: float
    symbol: str
    target_code: str
    underlying_code: str
    underlying_kind: str
    unit: int
    update_date: str
    def __init__(self, category: _Optional[str] = ..., code: _Optional[str] = ..., currency: _Optional[str] = ..., day_trade: _Optional[str] = ..., delivery_date: _Optional[str] = ..., delivery_month: _Optional[str] = ..., exchange: _Optional[str] = ..., limit_down: _Optional[float] = ..., limit_up: _Optional[float] = ..., margin_trading_balance: _Optional[int] = ..., multiplier: _Optional[int] = ..., name: _Optional[str] = ..., option_right: _Optional[str] = ..., reference: _Optional[float] = ..., security_type: _Optional[str] = ..., short_selling_balance: _Optional[int] = ..., strike_price: _Optional[float] = ..., symbol: _Optional[str] = ..., target_code: _Optional[str] = ..., underlying_code: _Optional[str] = ..., underlying_kind: _Optional[str] = ..., unit: _Optional[int] = ..., update_date: _Optional[str] = ...) -> None: ...
