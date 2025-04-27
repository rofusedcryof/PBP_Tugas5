CREATE DATABASE todo_app;

USE todo_app;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE todos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    task TEXT,
    is_done BOOLEAN DEFAULT 0,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Admin default (password = nim_anda -> ganti sesuai NIM-mu)
INSERT INTO users (username, password) VALUES ('admin', SHA2('nim_anda', 256));