BEGIN;
CREATE TABLE basic_stock(
    "code" varchar PRIMARY KEY,
    "name" varchar NOT NULL,
    "exchange" varchar NOT NULL,
    "category" varchar NOT NULL,
    "day_trade" boolean NOT NULL,
    "last_close" DECIMAL NOT NULL,
    "update_date" timestamptz NOT NULL
);
CREATE TABLE basic_future(
    "code" varchar PRIMARY KEY,
    "symbol" varchar NOT NULL,
    "name" varchar NOT NULL,
    "category" varchar NOT NULL,
    "delivery_month" varchar NOT NULL,
    "delivery_date" timestamptz NOT NULL,
    "underlying_kind" varchar NOT NULL,
    "unit" int NOT NULL,
    "limit_up" DECIMAL NOT NULL,
    "limit_down" DECIMAL NOT NULL,
    "reference" DECIMAL NOT NULL,
    "update_date" timestamptz NOT NULL
);
CREATE TABLE basic_option(
    "code" varchar PRIMARY KEY,
    "symbol" varchar NOT NULL,
    "name" varchar NOT NULL,
    "category" varchar NOT NULL,
    "delivery_month" varchar NOT NULL,
    "delivery_date" timestamptz NOT NULL,
    "strike_price" DECIMAL NOT NULL,
    "option_right" varchar NOT NULL,
    "underlying_kind" varchar NOT NULL,
    "unit" int NOT NULL,
    "limit_up" DECIMAL NOT NULL,
    "limit_down" DECIMAL NOT NULL,
    "reference" DECIMAL NOT NULL,
    "update_date" timestamptz NOT NULL
);
CREATE TABLE system_totp(
    "id" serial PRIMARY KEY,
    "secret" varchar NOT NULL UNIQUE,
    "qr_code" varchar NOT NULL UNIQUE
);
CREATE TABLE system_account(
    "id" serial PRIMARY KEY,
    "email" varchar NOT NULL UNIQUE,
    "username" varchar NOT NULL UNIQUE,
    "password" varchar NOT NULL,
    "role" int NOT NULL,
    "enable_totp" boolean DEFAULT FALSE,
    "totp_id" int REFERENCES system_totp("id") ON DELETE SET NULL DEFAULT NULL,
    "created_at" timestamptz NOT NULL,
    "updated_at" timestamptz NOT NULL
);
CREATE TABLE system_event_login(
    "id" serial PRIMARY KEY,
    "account_id" int REFERENCES system_account("id") ON DELETE SET NULL DEFAULT NULL,
    "ip" varchar NOT NULL,
    "resp_code" int NOT NULL,
    "created_at" timestamptz NOT NULL
);
CREATE TABLE system_event_shioaji(
    "id" serial PRIMARY KEY,
    "event_code" int NOT NULL,
    "response" int NOT NULL,
    "event" varchar NOT NULL,
    "info" varchar NOT NULL,
    "created_at" timestamptz NOT NULL
);
COMMIT;

