CREATE TABLE user (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  family VARCHAR(20) NOT NULL,
  name VARCHAR(20) NOT NULL,
  position VARCHAR(50) NOT NULL,
  email VARCHAR(30) NOT NULL,
  telephone VARCHAR(12)
);
INSERT INTO user(family, name, position, email, telephone) VALUES
('Соколов', 'Александр', 'начальник', 'sokol@gmail.com', '+71232');

CREATE TABLE schedule (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  user_id BIGINT NOT NULL,
  work_date DATE NOT NULL,
  work_time_type SMALLINT NOT NULL CHECK (work_time_type = 1 OR work_time_type = 2 OR work_time_type = 3),
  is_actual SMALLINT NOT NULL CHECK (is_actual = 0 OR is_actual = 1)
);