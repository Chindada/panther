from google.protobuf import timestamp_pb2 as _timestamp_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class UserRole(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    UNKNOWN: _ClassVar[UserRole]
    USER: _ClassVar[UserRole]
    ADMIN: _ClassVar[UserRole]
    ROOT: _ClassVar[UserRole]
UNKNOWN: UserRole
USER: UserRole
ADMIN: UserRole
ROOT: UserRole

class BasicUser(_message.Message):
    __slots__ = ("email", "username", "password", "role")
    EMAIL_FIELD_NUMBER: _ClassVar[int]
    USERNAME_FIELD_NUMBER: _ClassVar[int]
    PASSWORD_FIELD_NUMBER: _ClassVar[int]
    ROLE_FIELD_NUMBER: _ClassVar[int]
    email: str
    username: str
    password: str
    role: UserRole
    def __init__(self, email: _Optional[str] = ..., username: _Optional[str] = ..., password: _Optional[str] = ..., role: _Optional[_Union[UserRole, str]] = ...) -> None: ...

class LocalUser(_message.Message):
    __slots__ = ("id", "basic", "need_change_password", "created_at", "updated_at")
    ID_FIELD_NUMBER: _ClassVar[int]
    BASIC_FIELD_NUMBER: _ClassVar[int]
    NEED_CHANGE_PASSWORD_FIELD_NUMBER: _ClassVar[int]
    CREATED_AT_FIELD_NUMBER: _ClassVar[int]
    UPDATED_AT_FIELD_NUMBER: _ClassVar[int]
    id: int
    basic: BasicUser
    need_change_password: bool
    created_at: _timestamp_pb2.Timestamp
    updated_at: _timestamp_pb2.Timestamp
    def __init__(self, id: _Optional[int] = ..., basic: _Optional[_Union[BasicUser, _Mapping]] = ..., need_change_password: bool = ..., created_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., updated_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class LocalUserList(_message.Message):
    __slots__ = ("list",)
    LIST_FIELD_NUMBER: _ClassVar[int]
    list: _containers.RepeatedCompositeFieldContainer[LocalUser]
    def __init__(self, list: _Optional[_Iterable[_Union[LocalUser, _Mapping]]] = ...) -> None: ...

class Totp(_message.Message):
    __slots__ = ("id", "secret", "qr_code")
    ID_FIELD_NUMBER: _ClassVar[int]
    SECRET_FIELD_NUMBER: _ClassVar[int]
    QR_CODE_FIELD_NUMBER: _ClassVar[int]
    id: int
    secret: str
    qr_code: str
    def __init__(self, id: _Optional[int] = ..., secret: _Optional[str] = ..., qr_code: _Optional[str] = ...) -> None: ...
