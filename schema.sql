CREATE DATABASE roxiler_db;
USE roxiler_db;

CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    address VARCHAR(400),
    password VARCHAR(255) NOT NULL,
    role ENUM('Admin', 'User', 'StoreOwner') NOT NULL
);

CREATE TABLE Stores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    address VARCHAR(400),
    owner_id INT,
    FOREIGN KEY (owner_id) REFERENCES Users(id)
);

CREATE TABLE Ratings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    store_id INT,
    user_id INT,
    rating INT CHECK (rating >= 1 AND rating <= 5),
    FOREIGN KEY (store_id) REFERENCES Stores(id),
    FOREIGN KEY (user_id) REFERENCES Users(id)
);