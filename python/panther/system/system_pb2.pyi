from google.protobuf import timestamp_pb2 as _timestamp_pb2
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class SettingKey(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    SETTING_UNKNOWN: _ClassVar[SettingKey]
    SETTING_JWT: _ClassVar[SettingKey]
SETTING_UNKNOWN: SettingKey
SETTING_JWT: SettingKey

class SettingJWT(_message.Message):
    __slots__ = ("secret", "updated_at")
    SECRET_FIELD_NUMBER: _ClassVar[int]
    UPDATED_AT_FIELD_NUMBER: _ClassVar[int]
    secret: str
    updated_at: _timestamp_pb2.Timestamp
    def __init__(self, secret: _Optional[str] = ..., updated_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class SystemSetting(_message.Message):
    __slots__ = ("key", "jwt")
    KEY_FIELD_NUMBER: _ClassVar[int]
    JWT_FIELD_NUMBER: _ClassVar[int]
    key: SettingKey
    jwt: SettingJWT
    def __init__(self, key: _Optional[_Union[SettingKey, str]] = ..., jwt: _Optional[_Union[SettingJWT, _Mapping]] = ...) -> None: ...

class SystemBuild(_message.Message):
    __slots__ = ("version", "commit")
    VERSION_FIELD_NUMBER: _ClassVar[int]
    COMMIT_FIELD_NUMBER: _ClassVar[int]
    version: str
    commit: str
    def __init__(self, version: _Optional[str] = ..., commit: _Optional[str] = ...) -> None: ...

class SystemInfo(_message.Message):
    __slots__ = ("launch_time", "disk_usage", "core", "web")
    LAUNCH_TIME_FIELD_NUMBER: _ClassVar[int]
    DISK_USAGE_FIELD_NUMBER: _ClassVar[int]
    CORE_FIELD_NUMBER: _ClassVar[int]
    WEB_FIELD_NUMBER: _ClassVar[int]
    launch_time: _timestamp_pb2.Timestamp
    disk_usage: float
    core: SystemBuild
    web: SystemBuild
    def __init__(self, launch_time: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., disk_usage: _Optional[float] = ..., core: _Optional[_Union[SystemBuild, _Mapping]] = ..., web: _Optional[_Union[SystemBuild, _Mapping]] = ...) -> None: ...
