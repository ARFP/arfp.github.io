CREATE TABLE users_roles(
   role_id INT AUTO_INCREMENT,
   role_name VARCHAR(50) NOT NULL,
   role_description VARCHAR(255),
   role_register_code CHAR(128) NOT NULL,
   PRIMARY KEY(role_id),
   UNIQUE(role_name)
);

CREATE TABLE users(
   user_id INT AUTO_INCREMENT,
   user_email VARCHAR(50) NOT NULL,
   user_lastname VARCHAR(50) NOT NULL,
   user_firstname VARCHAR(50) NOT NULL,
   user_password CHAR(128) NOT NULL,
   role_id INT NOT NULL,
   PRIMARY KEY(user_id),
   UNIQUE(user_email),
   FOREIGN KEY(role_id) REFERENCES users_roles(role_id)
);
