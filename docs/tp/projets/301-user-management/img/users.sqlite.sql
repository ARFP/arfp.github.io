CREATE TABLE users_roles(
   role_id INTEGER,
   role_name TEXT NOT NULL,
   role_description TEXT,
   role_register_code TEXT NOT NULL,
   PRIMARY KEY(role_id),
   UNIQUE(role_name)
);

CREATE TABLE users(
   user_id INTEGER,
   user_email TEXT NOT NULL,
   user_lastname TEXT NOT NULL,
   user_firstname TEXT NOT NULL,
   user_password TEXT NOT NULL,
   role_id INTEGER NOT NULL,
   PRIMARY KEY(user_id),
   UNIQUE(user_email),
   FOREIGN KEY(role_id) REFERENCES users_roles(role_id)
);
