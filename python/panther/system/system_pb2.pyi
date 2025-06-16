from google.protobuf import timestamp_pb2 as _timestamp_pb2
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

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
