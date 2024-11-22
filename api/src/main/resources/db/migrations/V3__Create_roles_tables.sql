CREATE TABLE roles
(
    id         INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    name       VARCHAR(50) NOT NULL,
    deleted_at TIMESTAMP
);

CREATE TABLE users_roles
(
    user_id INT NOT NULL,
    role_id INT NOT NULL,
    PRIMARY KEY (user_id, role_id),
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);
