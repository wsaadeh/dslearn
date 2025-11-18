INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$ntBZ0cbqTYw.g5GyFXkD0.x4Qb.LqzO2/FKeWGnzXENVbGJJwmmoa');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Black', 'bob@gmail.com', '$2a$10$ntBZ0cbqTYw.g5GyFXkD0.x4Qb.LqzO2/FKeWGnzXENVbGJJwmmoa');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$ntBZ0cbqTYw.g5GyFXkD0.x4Qb.LqzO2/FKeWGnzXENVbGJJwmmoa');


INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name,img_uri,img_gray_uri) VALUES ('Bootcamp HTML','https://www.publicdomainpictures.net/pictures/270000/nahled/training-course-training-online.jpg','https://blogcorretor.aocubo.com/wp-content/uploads/2022/01/aaasd-1140x735.jpg');

INSERT INTO tb_offer (edition,start_moment,end_moment,course_id) VALUES ('1.0',TIMESTAMP WITH TIME ZONE '2025-12-01T03:00:00Z',TIMESTAMP WITH TIME ZONE '2026-12-01T03:00:00Z',1)