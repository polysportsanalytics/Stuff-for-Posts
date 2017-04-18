attach "pitchfx.sqlite3" as db1;

.tables

PRAGMA table_info(atbat);
select count(*) from db1.atbat;

PRAGMA table_info(action);
select count(*) from db1.action;

PRAGMA table_info(pitch);
select count(*) from db1.pitch;

PRAGMA table_info(po);
select count(*) from db1.po;

PRAGMA table_info(runner);
select count(*) from db1.runner;
