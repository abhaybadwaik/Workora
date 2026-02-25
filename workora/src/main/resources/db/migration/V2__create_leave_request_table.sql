CREATE TABLE leave_request (
                               id BIGSERIAL PRIMARY KEY,
                               employee_id BIGINT NOT NULL,
                               start_date DATE NOT NULL,
                               end_date DATE NOT NULL,
                               type VARCHAR(20) NOT NULL,
                               status VARCHAR(20) NOT NULL,
                               CONSTRAINT fk_employee
                                   FOREIGN KEY (employee_id)
                                       REFERENCES employees(id)
);