CREATE TABLE employees (
                           id BIGSERIAL PRIMARY KEY,
                           name VARCHAR(100) NOT NULL,
                           email VARCHAR(150) UNIQUE NOT NULL,
                           password VARCHAR(255) NOT NULL,
                           role VARCHAR(20) NOT NULL,
                           paid_leave_balance INT DEFAULT 10,
                           manager_id BIGINT,
                           CONSTRAINT fk_manager
                               FOREIGN KEY (manager_id)
                                   REFERENCES employees(id)
                                   ON DELETE SET NULL
);
