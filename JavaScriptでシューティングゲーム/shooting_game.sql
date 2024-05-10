CREATE DATABASE rankings;

USE rankings;

-- rankingsテーブルの作成
CREATE TABLE rankings (
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    player_name VARCHAR(50) NOT NULL,
    highest_score INT NOT NULL,
    previous_score INT,
    game_date DATE
);

-- playersテーブルの作成
CREATE TABLE players (
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    player_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ゲームプレイ履歴を示すgame_historyテーブルの作成
CREATE TABLE game_history (
    game_id INT AUTO_INCREMENT PRIMARY KEY,
    player_id INT,
    score INT,
    game_date DATETIME,
    FOREIGN KEY (player_id) REFERENCES players(player_id)
);
