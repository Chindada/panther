from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class APISecret(_message.Message):
    __slots__ = ("api_key", "api_key_secret")
    API_KEY_FIELD_NUMBER: _ClassVar[int]
    API_KEY_SECRET_FIELD_NUMBER: _ClassVar[int]
    api_key: str
    api_key_secret: str
    def __init__(self, api_key: _Optional[str] = ..., api_key_secret: _Optional[str] = ...) -> None: ...

class CASecret(_message.Message):
    __slots__ = ("person_id", "ca_path", "ca_password")
    PERSON_ID_FIELD_NUMBER: _ClassVar[int]
    CA_PATH_FIELD_NUMBER: _ClassVar[int]
    CA_PASSWORD_FIELD_NUMBER: _ClassVar[int]
    person_id: str
    ca_path: str
    ca_password: str
    def __init__(self, person_id: _Optional[str] = ..., ca_path: _Optional[str] = ..., ca_password: _Optional[str] = ...) -> None: ...

class ShioajiAuth(_message.Message):
    __slots__ = ("name", "api_secret", "ca_secret")
    NAME_FIELD_NUMBER: _ClassVar[int]
    API_SECRET_FIELD_NUMBER: _ClassVar[int]
    CA_SECRET_FIELD_NUMBER: _ClassVar[int]
    name: str
    api_secret: APISecret
    ca_secret: CASecret
    def __init__(self, name: _Optional[str] = ..., api_secret: _Optional[_Union[APISecret, _Mapping]] = ..., ca_secret: _Optional[_Union[CASecret, _Mapping]] = ...) -> None: ...
