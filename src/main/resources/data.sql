INSERT IGNORE INTO roles(id, name) VAlUES (4 ,'ROLE_RECEPTIONIST');
INSERT IGNORE INTO roles(id, name) VAlUES (5 ,'ROLE_ACCOUNTANT');
INSERT IGNORE INTO roles(id, name) VALUES (6, 'ROLE_CLEANER');
INSERT IGNORE INTO roles(id, name) VALUES (7, 'ROLE_BUTLER');
INSERT IGNORE INTO roles(id, name) VALUES (8, 'ROLE_MANAGER');
INSERT IGNORE INTO roles(id, name) VALUES (9, 'ROLE_KITCHEN_MANAGER');
INSERT IGNORE INTO roles(id, name) VALUES (10, 'ROLE_REPAIRMAN');
INSERT IGNORE INTO users(id, email, firstname, lastname, password, phonenumber, username) VALUES (3,"ksiegowy@ksiegowy.pl", "Radosław", "Kotarski", "Ciekawe czy sie zahashuje", 666777999, "UserKsiegowy");
INSERT IGNORE INTO user_roles(user_id, role_id) VALUES (3, 5);

INSERT IGNORE INTO category_of_item (id, category) VALUES (1, 'CAT_FOOD');
INSERT IGNORE INTO category_of_item (id, category) VALUES (2, 'CAT_OFFICE');
INSERT IGNORE INTO category_of_item (id, category) VALUES (3, 'CAT_WORKSHOP');
INSERT IGNORE INTO category_of_item (id, category) VALUES (4, 'CAT_OTHER');
INSERT IGNORE INTO category_of_item (id, category) VALUES (5, 'CAT_HYGIENE');
INSERT IGNORE INTO items ( item_id, item_name, current_quantity, min_quantity) VALUES (1, 'Banany', 10, 30);
INSERT IGNORE INTO items ( item_id, item_name, current_quantity, min_quantity) VALUES (2, 'Chleb', 20, 30);
INSERT IGNORE INTO items ( item_id, item_name, current_quantity, min_quantity) VALUES (3, 'Brukselka', 15, 30);
INSERT IGNORE INTO items ( item_id, item_name, current_quantity, min_quantity) VALUES (4, 'Papier do drukarki', 20, 30);
INSERT IGNORE INTO items ( item_id, item_name, current_quantity, min_quantity) VALUES (5, 'Długopisy', 10, 30);
INSERT IGNORE INTO items ( item_id, item_name, current_quantity, min_quantity) VALUES (6, 'Spinacze', 30, 30);
INSERT IGNORE INTO items ( item_id, item_name, current_quantity, min_quantity) VALUES (7, 'Papier toaletowy', 200, 30);
INSERT IGNORE INTO items ( item_id, item_name, current_quantity, min_quantity) VALUES (8, 'Śrubki', 200, 30);
INSERT IGNORE INTO item_category (item_id, category_id) VALUES (1, 1);
INSERT IGNORE INTO item_category (item_id, category_id) VALUES (2, 1);
INSERT IGNORE INTO item_category (item_id, category_id) VALUES (3, 1);
INSERT IGNORE INTO item_category (item_id, category_id) VALUES (4, 2);
INSERT IGNORE INTO item_category (item_id, category_id) VALUES (5, 2);
INSERT IGNORE INTO item_category (item_id, category_id) VALUES (6, 2);
INSERT IGNORE INTO item_category (item_id, category_id) VALUES (7, 4);
INSERT IGNORE INTO item_category (item_id, category_id) VALUES (8, 3);

INSERT IGNORE INTO standard_of_room(id, max_capacity, name, price) VALUES (1, 1, 'Jedynka', 100.0);
INSERT IGNORE INTO standard_of_room(id, max_capacity, name, price) VALUES (2, 2, 'Dwójka', 180.0);
INSERT IGNORE INTO standard_of_room(id, max_capacity, name, price) VALUES (3, 3, 'Trójka', 300.0);
INSERT IGNORE INTO standard_of_room(id, max_capacity, name, price) VALUES (4, 5, 'Apartament', 450.0);

INSERT IGNORE INTO rooms (id, balance, current_number_of_guests, room_name, standard_id, cleaned) VALUES (1, 182.42, 1, '1001', 1, FALSE);
INSERT IGNORE INTO rooms (id, balance, current_number_of_guests, room_name, standard_id, cleaned) VALUES (2, 342.18, 2, '1002', 4, FALSE);
INSERT IGNORE INTO rooms (id, balance, current_number_of_guests, room_name, standard_id, cleaned) VALUES (3, 342.18, 0, '1003', 2, FALSE);
INSERT IGNORE INTO rooms (id, balance, current_number_of_guests, room_name, standard_id, cleaned) VALUES (4, 0.0, 1, '2001', 2, TRUE);
INSERT IGNORE INTO rooms (id, balance, current_number_of_guests, room_name, standard_id, cleaned) VALUES (5, 0.0, 0, '2002', 2, TRUE);
INSERT IGNORE INTO rooms (id, balance, current_number_of_guests, room_name, standard_id, cleaned) VALUES (6, 0.0, 0, '2003', 2, FALSE);
INSERT IGNORE INTO rooms (id, balance, current_number_of_guests, room_name, standard_id, cleaned) VALUES (7, 342.18, 1, '3001', 3, FALSE);
INSERT IGNORE INTO rooms (id, balance, current_number_of_guests, room_name, standard_id, cleaned) VALUES (8, 342.18, 0, '3002', 3, TRUE);
INSERT IGNORE INTO rooms (id, balance, current_number_of_guests, room_name, standard_id, cleaned) VALUES (9, 342.18, 1, '3003', 1, TRUE);
INSERT IGNORE INTO rooms (id, balance, current_number_of_guests, room_name, standard_id, cleaned) VALUES (10, 342.18, 0, '3004', 1, TRUE);
INSERT IGNORE INTO rooms (id, balance, current_number_of_guests, room_name, standard_id, cleaned) VALUES (11, 342.18, 1, '3005', 2, TRUE);
INSERT IGNORE INTO rooms (id, balance, current_number_of_guests, room_name, standard_id, cleaned) VALUES (12, 342.18, 0, '3006', 2, FALSE);
INSERT IGNORE INTO rooms (id, balance, current_number_of_guests, room_name, standard_id, cleaned) VALUES (13, 342.18, 1, '4001', 3, FALSE);
INSERT IGNORE INTO rooms (id, balance, current_number_of_guests, room_name, standard_id, cleaned) VALUES (14, 342.18, 0, '4002', 2, TRUE);
INSERT IGNORE INTO rooms (id, balance, current_number_of_guests, room_name, standard_id, cleaned) VALUES (15, 10556.0, 1, '5001', 4, TRUE);
INSERT IGNORE INTO rooms (id, balance, current_number_of_guests, room_name, standard_id, cleaned) VALUES (16, 3400.0, 0, '5002', 4, TRUE);

INSERT IGNORE INTO reservations(id, end_date, first_name, last_name, start_date, room_id) VALUES (1, DATE '2020-05-23', 'Jan', 'Kowalski', DATE '2020-05-15', 1);
INSERT IGNORE INTO reservations(id, end_date, first_name, last_name, start_date, room_id) VALUES (2, DATE '2020-05-30', 'Darek', 'Dariusz', DATE '2020-05-24', 1);
INSERT IGNORE INTO reservations(id, end_date, first_name, last_name, start_date, room_id) VALUES (3, DATE '2020-05-21', 'Tedeo', 'Tadeo', DATE '2020-05-18', 2);
INSERT IGNORE INTO reservations(id, end_date, first_name, last_name, start_date, room_id) VALUES (4, DATE '2020-05-19', 'Jaro', 'Jarosław', DATE '2020-05-05', 2);
INSERT IGNORE INTO reservations(id, end_date, first_name, last_name, start_date, room_id) VALUES (5, DATE '2020-05-19', 'Jaro', 'Jarosław', DATE '2020-05-05', 3);
INSERT IGNORE INTO reservations(id, end_date, first_name, last_name, start_date, room_id) VALUES (6, DATE '2020-06-15', 'Jacek', 'Kurski', DATE '2020-06-10', 5);
INSERT IGNORE INTO reservations(id, end_date, first_name, last_name, start_date, room_id) VALUES (7, DATE '2020-06-25', 'Wiesław', 'Wojnar', DATE '2020-06-20', 5);

INSERT IGNORE INTO guests(id, accommodation_date, check_out_date, first_name, last_name, room_id) VALUES (1, DATE '2020-05-15', DATE '2020-05-23', 'Jan', 'Kowalski', 1 );
INSERT IGNORE INTO guests(id, accommodation_date, check_out_date, first_name, last_name, room_id) VALUES (2, DATE '2020-05-24', DATE '2020-05-29', 'Darek', 'Dariusz', 2 );
INSERT IGNORE INTO guests(id, accommodation_date, check_out_date, first_name, last_name, room_id) VALUES (3, DATE '2020-05-18', DATE '2020-06-30', 'Tedeo', 'Tadeo', 2 );
INSERT IGNORE INTO guests(id, accommodation_date, check_out_date, first_name, last_name, room_id) VALUES (4, DATE '2020-05-18', DATE '2020-06-28', 'Marek', 'Mariusz', 4 );
INSERT IGNORE INTO guests(id, accommodation_date, check_out_date, first_name, last_name, room_id) VALUES (5, DATE '2020-05-18', DATE '2020-05-21', 'Darek', 'Dariusz', 7 );
INSERT IGNORE INTO guests(id, accommodation_date, check_out_date, first_name, last_name, room_id) VALUES (6, DATE '2020-05-18', DATE '2020-05-21', 'Jurek', 'Jarek', 9 );
INSERT IGNORE INTO guests(id, accommodation_date, check_out_date, first_name, last_name, room_id) VALUES (7, DATE '2020-05-18', DATE '2020-05-21', 'Jarek', 'Jurkowski', 11 );
INSERT IGNORE INTO guests(id, accommodation_date, check_out_date, first_name, last_name, room_id) VALUES (8, DATE '2020-05-18', DATE '2020-05-21', 'Natalia', 'Natka', 13 );
INSERT IGNORE INTO guests(id, accommodation_date, check_out_date, first_name, last_name, room_id) VALUES (9, DATE '2020-05-18', DATE '2020-05-21', 'Wilhelm', 'Volder', 15 );

INSERT IGNORE INTO notificationtypes (id, type) VALUES (1, 'RES_USER_PASSWORD');
INSERT IGNORE INTO notificationtypes (id, type) VALUES (2, 'FOOD_ENDED');
INSERT IGNORE INTO notificationtypes (id, type) VALUES (3, 'ROOM_CLEANING');
INSERT IGNORE INTO notificationtypes (id, type) VALUES (4, 'FLAW');
INSERT IGNORE INTO notificationtypes (id, type) VALUES (5, 'SMALL_AMOUNT_ITEM');
INSERT IGNORE INTO notifications(id, user_id, type_id, room_id, description) VALUES (1,"Recepcjonista",3, 1, "Rozlane cus tam");
INSERT IGNORE INTO notifications(id, user_id, type_id, room_id, description) VALUES (2,"Recepcjonista",3, 1, "Kolejny brud");
INSERT IGNORE INTO notifications(id, user_id, type_id, room_id, description) VALUES (3,"Recepcjonista",3, 1, "I jeszcze troszke");
INSERT IGNORE INTO notifications(id, user_id, type_id, room_id, description) VALUES (4,"Recepcjonista",3, 2, "Brud brud brud");
INSERT IGNORE INTO notifications(id, user_id, type_id) VALUES (5,"admin",2);
INSERT IGNORE INTO notifications(id, user_id, type_id) VALUES (6,"Nazwa użytkownika restującego hasło",1);
INSERT IGNORE INTO notifications(id, user_id, type_id, room_id, description) VALUES (7,"Nazwa uzytkownika wpisujacego",4, 4, "Polamane krzeslo");

INSERT IGNORE INTO servicetypes (id, type, price) VALUES (1, 'KOLACJA', 30);
INSERT IGNORE INTO servicetypes (id, type, price) VALUES (2, 'ALKOHOL', 50);
INSERT IGNORE INTO servicetypes (id, type, price) VALUES (3, 'OBIAD', 30);
INSERT IGNORE INTO services (id, type_id, room_id, description) VALUES (2, 2, 2, '0.7 litra wódeczki');
INSERT IGNORE INTO services (id, type_id, room_id, description) VALUES (3, 1, 2, 'Kolacja do pokoju');
INSERT IGNORE INTO services (id, type_id, room_id, description) VALUES (1, 3, 2, 'Obiad do pokoju');

INSERT IGNORE INTO orders (order_id, item_counter, order_date, price, item_id) VALUES (1,10, DATE '2020-06-18', NULL, 1);
INSERT IGNORE INTO orders (order_id, item_counter, order_date, price, item_id) VALUES (2,6, DATE '2020-06-19', NULL, 2);
INSERT IGNORE INTO orders (order_id, item_counter, order_date, price, item_id) VALUES (3,8, DATE '2020-06-20', 24.21, 3);
INSERT IGNORE INTO orders (order_id, item_counter, order_date, price, item_id) VALUES (4,66, DATE '2020-06-21', NULL, 4);