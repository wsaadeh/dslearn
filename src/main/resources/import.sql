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

INSERT INTO tb_offer (edition,start_moment,end_moment,course_id) VALUES ('1.0',TIMESTAMP WITH TIME ZONE '2025-12-01T03:00:00Z',TIMESTAMP WITH TIME ZONE '2026-12-01T03:00:00Z',1);
INSERT INTO tb_offer (edition,start_moment,end_moment,course_id) VALUES ('2.0',TIMESTAMP WITH TIME ZONE '2026-01-01T03:00:00Z',TIMESTAMP WITH TIME ZONE '2027-01-01T03:00:00Z',1);

INSERT INTO tb_resource (title,description,position,img_uri,type,offer_id) VALUES ('Trilha HTML','Trilha principal do curso',1,'https://www.publicdomainpictures.net/pictures/270000/nahled/training-course-training-online.jpg',1,1);
INSERT INTO tb_resource (title,description,position,img_uri,type,offer_id) VALUES ('Forum','Tire suas dúvidas',2,'https://www.publicdomainpictures.net/pictures/270000/nahled/training-course-training-online.jpg',2,1);
INSERT INTO tb_resource (title,description,position,img_uri,type,offer_id) VALUES ('Lives','Lives exclusivas para turma',3,'https://www.publicdomainpictures.net/pictures/270000/nahled/training-course-training-online.jpg',0,1);

INSERT INTO tb_section (title,description,position,img_uri,resource_id,prerequisite_id) VALUES ('Capitulo 1','Neste capitulo vamos começar',1,'https://www.publicdomainpictures.net/pictures/270000/nahled/training-course-training-online.jpg',1,null);
INSERT INTO tb_section (title,description,position,img_uri,resource_id,prerequisite_id) VALUES ('Capitulo 2','Neste capitulo vamos continuar',2,'https://www.publicdomainpictures.net/pictures/270000/nahled/training-course-training-online.jpg',1,1);
INSERT INTO tb_section (title,description,position,img_uri,resource_id,prerequisite_id) VALUES ('Capitulo 3','Neste capitulo vamos finalizar',3,'https://www.publicdomainpictures.net/pictures/270000/nahled/training-course-training-online.jpg',1,2);