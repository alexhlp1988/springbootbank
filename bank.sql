--bank mysql script
--用户表
CREATE TABLE user
(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100),
    password VARCHAR(100),
    email VARCHAR(100),
    enabled INT, --1 启用 0 禁用
    last_password_reset_date DATETIME,
    login_time DATETIME
);
--角色表
CREATE TABLE authority
(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    descn VARCHAR(100)
);
--用户-角色表
CREATE TABLE user_authority
(
    user_id BIGINT,
    authority_id BIGINT,
    CONSTRAINT ua_user_fk FOREIGN KEY (user_id) REFERENCES user (id),
    CONSTRAINT ua_authority_fk FOREIGN KEY (authority_id) REFERENCES authority (id)
);

--初始化数据--------------------------------------------------
--角色表
INSERT INTO employee.authority (id, name, descn) VALUES (1, 'ROLE_ADMIN', '系统管理员');
INSERT INTO employee.authority (id, name, descn) VALUES (2, 'ROLE_MANAGER', '经理');
INSERT INTO employee.authority (id, name, descn) VALUES (3, 'ROLE_CLERK', '办事员');
--用户表 密码同用户名
INSERT INTO employee.user (id, username, password, email, enabled, last_password_reset_date, login_time) VALUES (1, 'admin', '$2a$10$rbaHkh9HFYar0iQMz9WYUOrGZe/heHn7dGUrVUZwjYoVPiDdLLJZO', 'admin@gmail.com', 1, '2018-04-10 07:06:02', '2018-04-12 07:06:08');
INSERT INTO employee.user (id, username, password, email, enabled, last_password_reset_date, login_time) VALUES (2, 'king', '$2a$10$NEGPWBB3p23o9ce4HzepJ.jxicOBTjnKLWqwHgvU3IF1Ygiw2rV82', 'king@gmail.com', 1, '2018-04-12 07:07:42', '2018-04-12 07:07:46');
INSERT INTO employee.user (id, username, password, email, enabled, last_password_reset_date, login_time) VALUES (3, 'smith', '$2a$10$rNUCMR8aGnt9CYuejhJlgeg9/qykbSTqmXbe2q0I4JrC6KIUbmLJi', 'smith@gmail.com', 0, '2018-04-12 07:08:14', '2018-04-12 07:08:17');
INSERT INTO employee.user (id, username, password, email, enabled, last_password_reset_date, login_time) VALUES (4, 'jones', '$2a$10$pfEqN6DOtPmJKrrdnj8Hj.CSRwBGCGAq4QP36M7gFfrvqw6FDioR6', 'jones@gmail.com', 1, '2018-04-12 07:09:06', '2018-04-12 07:09:08');
INSERT INTO employee.user (id, username, password, email, enabled, last_password_reset_date, login_time) VALUES (5, 'james', '$2a$10$gvEoBB82G8EUOOmqzqJda.shKh5ptceiHw4qmb9qC74SeWvV0zkFq', 'james@gmail.com', 1, '2018-04-12 07:09:46', '2018-04-12 07:09:48');

--用户-角色表
INSERT INTO employee.user_authority (user_id, authority_id) VALUES (1, 1);
INSERT INTO employee.user_authority (user_id, authority_id) VALUES (2, 1);
INSERT INTO employee.user_authority (user_id, authority_id) VALUES (3, 1);
INSERT INTO employee.user_authority (user_id, authority_id) VALUES (4, 2);
INSERT INTO employee.user_authority (user_id, authority_id) VALUES (5, 3);
INSERT INTO employee.user_authority (user_id, authority_id) VALUES (1, 2);
INSERT INTO employee.user_authority (user_id, authority_id) VALUES (1, 3);
INSERT INTO employee.user_authority (user_id, authority_id) VALUES (4, 3);
commit;
