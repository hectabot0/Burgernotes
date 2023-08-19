DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS notes;
DROP TABLE IF EXISTS sessions;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created TEXT NOT NULL,
    username TEXT NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE notes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    creator INTEGER NOT NULL,
    created TEXT NOT NULL,
    edited TEXT NOT NULL,
    content TEXT NOT NULL,
    title TEXT NOT NULL
);

CREATE TABLE sessions (
    sessionid INTEGER PRIMARY KEY AUTOINCREMENT,
    session TEXT NOT NULL,
    id INTEGER NOT NULL,
    device TEXT NOT NULL DEFAULT "?"
);