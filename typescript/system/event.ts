// @generated by protobuf-ts 2.11.1 with parameter use_proto_field_name,long_type_number,force_client_none,server_none
// @generated from protobuf file "system/event.proto" (package "system", syntax proto3)
// tslint:disable
import type { BinaryWriteOptions } from "@protobuf-ts/runtime";
import type { IBinaryWriter } from "@protobuf-ts/runtime";
import { WireType } from "@protobuf-ts/runtime";
import type { BinaryReadOptions } from "@protobuf-ts/runtime";
import type { IBinaryReader } from "@protobuf-ts/runtime";
import { UnknownFieldHandler } from "@protobuf-ts/runtime";
import type { PartialMessage } from "@protobuf-ts/runtime";
import { reflectionMergePartial } from "@protobuf-ts/runtime";
import { MessageType } from "@protobuf-ts/runtime";
import { Timestamp } from "../google/protobuf/timestamp";
import { User } from "./user";
/**
 * @generated from protobuf message system.LoginEvent
 */
export interface LoginEvent {
    /**
     * @generated from protobuf field: int64 id = 1
     */
    id: number;
    /**
     * @generated from protobuf field: system.User user = 2
     */
    user?: User;
    /**
     * @generated from protobuf field: string ip = 3
     */
    ip: string;
    /**
     * @generated from protobuf field: system.LoginRespCode resp_code = 4
     */
    resp_code: LoginRespCode;
    /**
     * @generated from protobuf field: google.protobuf.Timestamp created_at = 5
     */
    created_at?: Timestamp;
}
/**
 * @generated from protobuf message system.LoginEventList
 */
export interface LoginEventList {
    /**
     * @generated from protobuf field: repeated system.LoginEvent list = 1
     */
    list: LoginEvent[];
}
/**
 * @generated from protobuf enum system.LoginRespCode
 */
export enum LoginRespCode {
    /**
     * @generated from protobuf enum value: OK = 0;
     */
    OK = 0,
    /**
     * @generated from protobuf enum value: PASSWORD_INCORRECT = 1;
     */
    PASSWORD_INCORRECT = 1,
    /**
     * @generated from protobuf enum value: USER_NOT_FOUND = 2;
     */
    USER_NOT_FOUND = 2,
    /**
     * @generated from protobuf enum value: DB_ERROR = 3;
     */
    DB_ERROR = 3,
    /**
     * @generated from protobuf enum value: MFA_FAILED = 4;
     */
    MFA_FAILED = 4
}
// @generated message type with reflection information, may provide speed optimized methods
class LoginEvent$Type extends MessageType<LoginEvent> {
    constructor() {
        super("system.LoginEvent", [
            { no: 1, name: "id", kind: "scalar", T: 3 /*ScalarType.INT64*/, L: 2 /*LongType.NUMBER*/ },
            { no: 2, name: "user", kind: "message", T: () => User },
            { no: 3, name: "ip", kind: "scalar", T: 9 /*ScalarType.STRING*/ },
            { no: 4, name: "resp_code", kind: "enum", localName: "resp_code", T: () => ["system.LoginRespCode", LoginRespCode] },
            { no: 5, name: "created_at", kind: "message", localName: "created_at", T: () => Timestamp }
        ]);
    }
    create(value?: PartialMessage<LoginEvent>): LoginEvent {
        const message = globalThis.Object.create((this.messagePrototype!));
        message.id = 0;
        message.ip = "";
        message.resp_code = 0;
        if (value !== undefined)
            reflectionMergePartial<LoginEvent>(this, message, value);
        return message;
    }
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: LoginEvent): LoginEvent {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* int64 id */ 1:
                    message.id = reader.int64().toNumber();
                    break;
                case /* system.User user */ 2:
                    message.user = User.internalBinaryRead(reader, reader.uint32(), options, message.user);
                    break;
                case /* string ip */ 3:
                    message.ip = reader.string();
                    break;
                case /* system.LoginRespCode resp_code */ 4:
                    message.resp_code = reader.int32();
                    break;
                case /* google.protobuf.Timestamp created_at */ 5:
                    message.created_at = Timestamp.internalBinaryRead(reader, reader.uint32(), options, message.created_at);
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message: LoginEvent, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter {
        /* int64 id = 1; */
        if (message.id !== 0)
            writer.tag(1, WireType.Varint).int64(message.id);
        /* system.User user = 2; */
        if (message.user)
            User.internalBinaryWrite(message.user, writer.tag(2, WireType.LengthDelimited).fork(), options).join();
        /* string ip = 3; */
        if (message.ip !== "")
            writer.tag(3, WireType.LengthDelimited).string(message.ip);
        /* system.LoginRespCode resp_code = 4; */
        if (message.resp_code !== 0)
            writer.tag(4, WireType.Varint).int32(message.resp_code);
        /* google.protobuf.Timestamp created_at = 5; */
        if (message.created_at)
            Timestamp.internalBinaryWrite(message.created_at, writer.tag(5, WireType.LengthDelimited).fork(), options).join();
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message system.LoginEvent
 */
export const LoginEvent = new LoginEvent$Type();
// @generated message type with reflection information, may provide speed optimized methods
class LoginEventList$Type extends MessageType<LoginEventList> {
    constructor() {
        super("system.LoginEventList", [
            { no: 1, name: "list", kind: "message", repeat: 2 /*RepeatType.UNPACKED*/, T: () => LoginEvent }
        ]);
    }
    create(value?: PartialMessage<LoginEventList>): LoginEventList {
        const message = globalThis.Object.create((this.messagePrototype!));
        message.list = [];
        if (value !== undefined)
            reflectionMergePartial<LoginEventList>(this, message, value);
        return message;
    }
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: LoginEventList): LoginEventList {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* repeated system.LoginEvent list */ 1:
                    message.list.push(LoginEvent.internalBinaryRead(reader, reader.uint32(), options));
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message: LoginEventList, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter {
        /* repeated system.LoginEvent list = 1; */
        for (let i = 0; i < message.list.length; i++)
            LoginEvent.internalBinaryWrite(message.list[i], writer.tag(1, WireType.LengthDelimited).fork(), options).join();
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message system.LoginEventList
 */
export const LoginEventList = new LoginEventList$Type();
