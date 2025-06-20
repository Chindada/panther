from google.protobuf import timestamp_pb2 as _timestamp_pb2
from system import user_pb2 as _user_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class LoginRespCode(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    OK: _ClassVar[LoginRespCode]
    PASSWORD_INCORRECT: _ClassVar[LoginRespCode]
    USER_NOT_FOUND: _ClassVar[LoginRespCode]
    DB_ERROR: _ClassVar[LoginRespCode]
    MFA_FAILED: _ClassVar[LoginRespCode]
OK: LoginRespCode
PASSWORD_INCORRECT: LoginRespCode
USER_NOT_FOUND: LoginRespCode
DB_ERROR: LoginRespCode
MFA_FAILED: LoginRespCode

class LoginEvent(_message.Message):
    __slots__ = ("id", "user", "ip", "resp_code", "created_at")
    ID_FIELD_NUMBER: _ClassVar[int]
    USER_FIELD_NUMBER: _ClassVar[int]
    IP_FIELD_NUMBER: _ClassVar[int]
    RESP_CODE_FIELD_NUMBER: _ClassVar[int]
    CREATED_AT_FIELD_NUMBER: _ClassVar[int]
    id: int
    user: _user_pb2.LocalUser
    ip: str
    resp_code: LoginRespCode
    created_at: _timestamp_pb2.Timestamp
    def __init__(self, id: _Optional[int] = ..., user: _Optional[_Union[_user_pb2.LocalUser, _Mapping]] = ..., ip: _Optional[str] = ..., resp_code: _Optional[_Union[LoginRespCode, str]] = ..., created_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class LoginEventList(_message.Message):
    __slots__ = ("list",)
    LIST_FIELD_NUMBER: _ClassVar[int]
    list: _containers.RepeatedCompositeFieldContainer[LoginEvent]
    def __init__(self, list: _Optional[_Iterable[_Union[LoginEvent, _Mapping]]] = ...) -> None: ...
