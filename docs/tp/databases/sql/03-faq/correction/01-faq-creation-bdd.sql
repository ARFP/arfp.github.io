DROP DATABASE IF EXISTS minifaq;

CREATE DATABASE mini_faq;

USE mini_faq;

CREATE TABLE users(
   user_id INT,
   user_email VARCHAR(128) NOT NULL,
   user_lastname VARCHAR(50) NOT NULL,
   user_firstname VARCHAR(50) NOT NULL,
   PRIMARY KEY(user_id),
   UNIQUE(user_email)
);

CREATE TABLE questions(
   question_id INT AUTO_INCREMENT,
   question_date DATE NOT NULL,
   question_label VARCHAR(255) NOT NULL,
   question_response TEXT NOT NULL,
   user_id INT NOT NULL,
   PRIMARY KEY(question_id),
   FOREIGN KEY(user_id) REFERENCES users(user_id)
);

CREATE TABLE categories(
   category_name VARCHAR(30),
   category_description VARCHAR(255),
   category_order TINYINT NOT NULL,
   PRIMARY KEY(category_name),
   UNIQUE(category_order)
);

CREATE TABLE categories_questions(
   question_id INT,
   category_name VARCHAR(30),
   PRIMARY KEY(question_id, category_name),
   FOREIGN KEY(question_id) REFERENCES questions(question_id),
   FOREIGN KEY(category_name) REFERENCES categories(category_name)
);

