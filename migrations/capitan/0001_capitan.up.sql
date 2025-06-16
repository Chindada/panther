BEGIN;
CREATE TABLE IF NOT EXISTS system_totp(
    "id" serial PRIMARY KEY,
    "secret" varchar NOT NULL UNIQUE,
    "qr_code" varchar NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS system_account(
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
CREATE TABLE IF NOT EXISTS system_event_login(
    "id" serial PRIMARY KEY,
    "account_id" int REFERENCES system_account("id") ON DELETE SET NULL DEFAULT NULL,
    "ip" varchar NOT NULL,
    "resp_code" int NOT NULL,
    "created_at" timestamptz NOT NULL
);
COMMIT;

