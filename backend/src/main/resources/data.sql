INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob  Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');


INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('BootCamp HTML', 'https://akm-img-a-in.tosshub.com/indiatoday/images/bodyeditor/202009/e-learning_digital_education-1200x1080.jpg?XjMNHsb4gLoU_cC7110HB7jVghJQROOj', 'https://basicmedicalcourse.aopa.org/client/themes/aopa/images/AOPA_brand_icons_Online%20course_PMS303.png');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2022-07-11T20:35:07.12345Z',TIMESTAMP WITH TIME ZONE '2022-07-11T20:35:07.12345Z',1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2023-07-11T20:35:07.12345Z',TIMESTAMP WITH TIME ZONE '2023-07-11T20:35:07.12345Z',1);

INSERT INTO tb_resource(title,description,position,img_Uri,type, offer_id) VALUES('Trilha HTML', 'Trilha principal do Curso', 1,'https://akm-img-a-in.tosshub.com/indiatoday/images/bodyeditor/202009/e-learning_digital_education-1200x1080.jpg?XjMNHsb4gLoU_cC7110HB7jVghJQROOj', 1, 1);

INSERT INTO tb_resource(title,description,position,img_Uri,type, offer_id) VALUES('Forum', 'Tire Suas Dúvidas', 2,'https://akm-img-a-in.tosshub.com/indiatoday/images/bodyeditor/202009/e-learning_digital_education-1200x1080.jpg?XjMNHsb4gLoU_cC7110HB7jVghJQROOj', 2, 1);

INSERT INTO tb_resource(title,description,position,img_Uri,type, offer_id) VALUES('Lives', 'Lives Exclusivas Para a Turma', 1,'https://akm-img-a-in.tosshub.com/indiatoday/images/bodyeditor/202009/e-learning_digital_education-1200x1080.jpg?XjMNHsb4gLoU_cC7110HB7jVghJQROOj', 0, 1);

INSERT INTO tb_section(title,description,position,img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Neste Capítulo Vamos Começar', 1,'https://akm-img-a-in.tosshub.com/indiatoday/images/bodyeditor/202009/e-learning_digital_education-1200x1080.jpg?XjMNHsb4gLoU_cC7110HB7jVghJQROOj', 1, null);


INSERT INTO tb_section(title,description,position,img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Neste Capítulo Vamos Continuar', 2,'https://akm-img-a-in.tosshub.com/indiatoday/images/bodyeditor/202009/e-learning_digital_education-1200x1080.jpg?XjMNHsb4gLoU_cC7110HB7jVghJQROOj', 1, 1);


INSERT INTO tb_section(title,description,position,img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Neste Capítulo Vamos Finalizar', 3,'https://akm-img-a-in.tosshub.com/indiatoday/images/bodyeditor/202009/e-learning_digital_education-1200x1080.jpg?XjMNHsb4gLoU_cC7110HB7jVghJQROOj', 1, 2);

INSERT INTO tb_enrollment(user_id, offer_id,enroll_Moment, refund_Moment, available, only_Update) VALUES(1 ,1 ,TIMESTAMP WITH TIME ZONE '2022-07-22T08:10:07.12345Z',null, true, false);
INSERT INTO tb_enrollment(user_id, offer_id,enroll_Moment, refund_Moment, available, only_Update) VALUES(2 ,1 ,TIMESTAMP WITH TIME ZONE '2022-07-22T08:10:07.12345Z',null, true, false);

INSERT INTO tb_lesson(title,position,section_id) VALUES('Aula 1 do capítulo 1', 1 , 1);
INSERT INTO tb_content(id,text_Content,video_Uri) VALUES(1,'Material de Apoio: abc', 'https://www.youtube.com/watch?v=ZxQwfnHQ92Y');

INSERT INTO tb_lesson(title,position,section_id) VALUES('Aula 2 do capítulo 1', 2 , 1);
INSERT INTO tb_content(id,text_Content,video_Uri) VALUES(2,'Segunda Aula', 'https://www.youtube.com/watch?v=ZxQwfnHQ92Y');

INSERT INTO tb_lesson(title,position,section_id) VALUES('Aula 3 do capítulo 1', 3 , 1);
INSERT INTO tb_content(id,text_Content,video_Uri) VALUES(3,'', 'https://www.youtube.com/watch?v=ZxQwfnHQ92Y');

INSERT INTO tb_lesson(title,position,section_id) VALUES('Tarefa do capítulo 1', 4 , 1);
INSERT INTO tb_task(id,description,question_Count,approval_Count,weight,due_Date) VALUES(4,'Fazer trabalho para entregar', 5, 4, 1.0,TIMESTAMP WITH TIME ZONE '2022-07-25T08:10:07.12345Z');

INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES(1, 1, 1);
INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES(2, 1, 1);

INSERT INTO tb_notification(text, moment, read, route, user_id) VALUES('Primeiro feedback da tarefa: favor revisar',TIMESTAMP WITH TIME ZONE '2022-07-22T17:38:07.12345Z', true, 'ofers/1/resource/1/sections/1',1);
INSERT INTO tb_notification(text, moment, read, route, user_id) VALUES('Segundo feedback da tarefa: favor revisar',TIMESTAMP WITH TIME ZONE '2022-07-22T17:38:07.12345Z', true, 'ofers/1/resource/1/sections/1',1);
INSERT INTO tb_notification(text, moment, read, route, user_id) VALUES('Terceiro feedback da tarefa: favor revisar',TIMESTAMP WITH TIME ZONE '2022-07-22T17:38:07.12345Z', true, 'ofers/1/resource/1/sections/1',1);


