from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Optional as _Optional

DESCRIPTOR: _descriptor.FileDescriptor

class APIResponse(_message.Message):
    __slots__ = ("code", "response")
    CODE_FIELD_NUMBER: _ClassVar[int]
    RESPONSE_FIELD_NUMBER: _ClassVar[int]
    code: int
    response: str
    def __init__(self, code: _Optional[int] = ..., response: _Optional[str] = ...) -> None: ...

class LoginResponse(_message.Message):
    __slots__ = ("token", "expire", "code")
    TOKEN_FIELD_NUMBER: _ClassVar[int]
    EXPIRE_FIELD_NUMBER: _ClassVar[int]
    CODE_FIELD_NUMBER: _ClassVar[int]
    token: str
    expire: str
    code: int
    def __init__(self, token: _Optional[str] = ..., expire: _Optional[str] = ..., code: _Optional[int] = ...) -> None: ...

class LoginRequest(_message.Message):
    __slots__ = ("username", "password", "mfa_code")
    USERNAME_FIELD_NUMBER: _ClassVar[int]
    PASSWORD_FIELD_NUMBER: _ClassVar[int]
    MFA_CODE_FIELD_NUMBER: _ClassVar[int]
    username: str
    password: str
    mfa_code: str
    def __init__(self, username: _Optional[str] = ..., password: _Optional[str] = ..., mfa_code: _Optional[str] = ...) -> None: ...

class ChangePasswordRequest(_message.Message):
    __slots__ = ("username", "old_password", "new_password")
    USERNAME_FIELD_NUMBER: _ClassVar[int]
    OLD_PASSWORD_FIELD_NUMBER: _ClassVar[int]
    NEW_PASSWORD_FIELD_NUMBER: _ClassVar[int]
    username: str
    old_password: str
    new_password: str
    def __init__(self, username: _Optional[str] = ..., old_password: _Optional[str] = ..., new_password: _Optional[str] = ...) -> None: ...
