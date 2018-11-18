CREATE TABLE IF NOT EXISTS user (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  surname VARCHAR(20) NOT NULL,
  name VARCHAR(20) NOT NULL,
  position VARCHAR(50) NOT NULL,
  email VARCHAR(30) NOT NULL UNIQUE,
  telephone VARCHAR(12) UNIQUE,
  login VARCHAR(20) UNIQUE NOT NULL,
  password VARCHAR(20) NOT NULL,
  CONSTRAINT full_name_constr UNIQUE(surname, name)
);
CREATE SEQUENCE IF NOT EXISTS seq_user START WITH 1;

INSERT INTO user(surname, name, position, email, telephone, login, password) VALUES
('Соколов', 'Александр', 'начальник', 'sokol@gmail.com', '+79852864127', 'sokol', 'admin'),
('Билоненко', 'Павел', 'инженер-программист', 'bil@gmail.com', '+79163744674', 'bil', 'user'),
('Кокарев', 'Дмитрий', 'инженер-электронщик', 'kokarev@gmail.com', '+79032165601', 'dimas', 'user'),
('Павлов', 'Степан', 'инженер-программист', 'step@gmail.com', '+79629046735', 'step', 'user');


CREATE TABLE IF NOT EXISTS schedule (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  begin_date DATE NOT NULL,
  end_date DATE NOT NULL,
  is_actual SMALLINT NOT NULL CHECK (is_actual = 0 OR is_actual = 1)
);
CREATE SEQUENCE IF NOT EXISTS seq_schedule START WITH 1;

CREATE TABLE IF NOT EXISTS schedule_element (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  user_id BIGINT NOT NULL REFERENCES user(id),
  work_date DATE NOT NULL,
  work_time_type CHAR(1) NOT NULL CHECK (work_time_type = 'у' OR work_time_type = 'в' OR work_time_type = 'н'),
  schedule_id BIGINT NOT NULL REFERENCES schedule(id),
);
CREATE SEQUENCE IF NOT EXISTS seq_schedule_element START WITH 1;