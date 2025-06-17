from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Optional as _Optional

DESCRIPTOR: _descriptor.FileDescriptor

class ShioajiEvent(_message.Message):
    __slots__ = ("resp_code", "event_code", "info", "event", "event_time")
    RESP_CODE_FIELD_NUMBER: _ClassVar[int]
    EVENT_CODE_FIELD_NUMBER: _ClassVar[int]
    INFO_FIELD_NUMBER: _ClassVar[int]
    EVENT_FIELD_NUMBER: _ClassVar[int]
    EVENT_TIME_FIELD_NUMBER: _ClassVar[int]
    resp_code: int
    event_code: int
    info: str
    event: str
    event_time: str
    def __init__(self, resp_code: _Optional[int] = ..., event_code: _Optional[int] = ..., info: _Optional[str] = ..., event: _Optional[str] = ..., event_time: _Optional[str] = ...) -> None: ...

class FutureTick(_message.Message):
    __slots__ = ("code", "date_time", "open", "underlying_price", "bid_side_total_vol", "ask_side_total_vol", "avg_price", "close", "high", "low", "amount", "total_amount", "volume", "total_volume", "tick_type", "chg_type", "price_chg", "pct_chg", "simtrade")
    CODE_FIELD_NUMBER: _ClassVar[int]
    DATE_TIME_FIELD_NUMBER: _ClassVar[int]
    OPEN_FIELD_NUMBER: _ClassVar[int]
    UNDERLYING_PRICE_FIELD_NUMBER: _ClassVar[int]
    BID_SIDE_TOTAL_VOL_FIELD_NUMBER: _ClassVar[int]
    ASK_SIDE_TOTAL_VOL_FIELD_NUMBER: _ClassVar[int]
    AVG_PRICE_FIELD_NUMBER: _ClassVar[int]
    CLOSE_FIELD_NUMBER: _ClassVar[int]
    HIGH_FIELD_NUMBER: _ClassVar[int]
    LOW_FIELD_NUMBER: _ClassVar[int]
    AMOUNT_FIELD_NUMBER: _ClassVar[int]
    TOTAL_AMOUNT_FIELD_NUMBER: _ClassVar[int]
    VOLUME_FIELD_NUMBER: _ClassVar[int]
    TOTAL_VOLUME_FIELD_NUMBER: _ClassVar[int]
    TICK_TYPE_FIELD_NUMBER: _ClassVar[int]
    CHG_TYPE_FIELD_NUMBER: _ClassVar[int]
    PRICE_CHG_FIELD_NUMBER: _ClassVar[int]
    PCT_CHG_FIELD_NUMBER: _ClassVar[int]
    SIMTRADE_FIELD_NUMBER: _ClassVar[int]
    code: str
    date_time: str
    open: float
    underlying_price: float
    bid_side_total_vol: int
    ask_side_total_vol: int
    avg_price: float
    close: float
    high: float
    low: float
    amount: float
    total_amount: float
    volume: int
    total_volume: int
    tick_type: int
    chg_type: int
    price_chg: float
    pct_chg: float
    simtrade: bool
    def __init__(self, code: _Optional[str] = ..., date_time: _Optional[str] = ..., open: _Optional[float] = ..., underlying_price: _Optional[float] = ..., bid_side_total_vol: _Optional[int] = ..., ask_side_total_vol: _Optional[int] = ..., avg_price: _Optional[float] = ..., close: _Optional[float] = ..., high: _Optional[float] = ..., low: _Optional[float] = ..., amount: _Optional[float] = ..., total_amount: _Optional[float] = ..., volume: _Optional[int] = ..., total_volume: _Optional[int] = ..., tick_type: _Optional[int] = ..., chg_type: _Optional[int] = ..., price_chg: _Optional[float] = ..., pct_chg: _Optional[float] = ..., simtrade: bool = ...) -> None: ...
