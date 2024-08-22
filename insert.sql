﻿INSERT INTO Teachers (TeacherID, FirstName, LastName, PhoneNumber, Email) VALUES
(1, 'Nguyen', 'Van A', '0123456789', 'a@school.com'),
(2, 'Tran', 'Thi B', '0987654321', 'b@school.com'),
(3, 'Le', 'Van C', '0123987654', 'c@school.com'),
(4, 'Pham', 'Thi D', '0123456780', 'd@school.com'),
(5, 'Hoang', 'Van E', '0987654322', 'e@school.com'),
(6, 'Vu', 'Thi F', '0123987651', 'f@school.com'),
(7, 'Phan', 'Van G', '0123456782', 'g@school.com'),
(8, 'Do', 'Thi H', '0987654323', 'h@school.com'),
(9, 'Ngo', 'Van I', '0123987653', 'i@school.com'),
(10, 'Ha', 'Thi J', '0123456784', 'j@school.com'),
(11, 'Bui', 'Van K', '0987654324', 'k@school.com'),
(12, 'Duong', 'Thi L', '0123987655', 'l@school.com'),
(13, 'Tran', 'Van M', '0123456786', 'm@school.com'),
(14, 'Ngo', 'Thi N', '0987654325', 'n@school.com'),
(15, 'Nguyen', 'Van O', '0123987657', 'o@school.com'),
(16, 'Pham', 'Thi P', '0123456788', 'p@school.com'),
(17, 'Bui', 'Van Q', '0987654326', 'q@school.com'),
(18, 'Vu', 'Thi R', '0123987659', 'r@school.com'),
(19, 'Phan', 'Van S', '0123456790', 's@school.com'),
(20, 'Do', 'Thi T', '0987654327', 't@school.com'),
(21, 'Ngo', 'Van U', '0123987660', 'u@school.com'),
(22, 'Ha', 'Thi V', '0123456791', 'v@school.com'),
(23, 'Bui', 'Van W', '0987654328', 'w@school.com'),
(24, 'Duong', 'Thi X', '0123987662', 'x@school.com'),
(25, 'Tran', 'Van Y', '0123456793', 'y@school.com'),
(26, 'Ngo', 'Thi Z', '0987654329', 'z@school.com'),
(27, 'Nguyen', 'Van AA', '0123987664', 'aa@school.com'),
(28, 'Pham', 'Thi AB', '0123456795', 'ab@school.com'),
(29, 'Bui', 'Van AC', '0987654330', 'ac@school.com'),
(30, 'Vu', 'Thi AD', '0123987666', 'ad@school.com');

INSERT INTO Classes (ClassID, ClassName, TeacherID) VALUES
(1, 'Class A', 1),
(2, 'Class B', 2),
(3, 'Class C', 3),
(4, 'Class D', 4),
(5, 'Class E', 5),
(6, 'Class F', 6),
(7, 'Class G', 7),
(8, 'Class H', 8),
(9, 'Class I', 9),
(10, 'Class J', 10),
(11, 'Class K', 11),
(12, 'Class L', 12),
(13, 'Class M', 13),
(14, 'Class N', 14),
(15, 'Class O', 15),
(16, 'Class P', 16),
(17, 'Class Q', 17),
(18, 'Class R', 18),
(19, 'Class S', 19),
(20, 'Class T', 20),
(21, 'Class U', 21),
(22, 'Class V', 22),
(23, 'Class W', 23),
(24, 'Class X', 24),
(25, 'Class Y', 25),
(26, 'Class Z', 26),
(27, 'Class AA', 27),
(28, 'Class AB', 28),
(29, 'Class AC', 29),
(30, 'Class AD', 30);

INSERT INTO Students (StudentID, FirstName, LastName, DateOfBirth, ClassID) VALUES
(1, 'Nguyen', 'Anh', '2018-05-20', 1),
(2, 'Tran', 'Binh', '2018-06-15', 1),
(3, 'Le', 'Chau', '2018-07-10', 2),
(4, 'Pham', 'Duong', '2018-08-05', 2),
(5, 'Hoang', 'Giao', '2018-09-01', 3),
(6, 'Vu', 'Hoang', '2018-10-10', 3),
(7, 'Phan', 'Hieu', '2018-11-11', 4),
(8, 'Do', 'Lam', '2018-12-12', 4),
(9, 'Ngo', 'Minh', '2018-01-13', 5),
(10, 'Ha', 'Ngan', '2018-02-14', 5),
(11, 'Bui', 'Oanh', '2018-03-15', 6),
(12, 'Duong', 'Phuc', '2018-04-16', 6),
(13, 'Tran', 'Quynh', '2018-05-17', 7),
(14, 'Ngo', 'Son', '2018-06-18', 7),
(15, 'Nguyen', 'Tam', '2018-07-19', 8),
(16, 'Pham', 'Uyen', '2018-08-20', 8),
(17, 'Bui', 'Van', '2018-09-21', 9),
(18, 'Vu', 'Xuan', '2018-10-22', 9),
(19, 'Phan', 'Yen', '2018-11-23', 10),
(20, 'Do', 'Anh', '2018-12-24', 10),
(21, 'Ngo', 'Binh', '2018-01-25', 11),
(22, 'Ha', 'Chau', '2018-02-26', 11),
(23, 'Bui', 'Duong', '2018-03-27', 12),
(24, 'Duong', 'Giao', '2018-04-28', 12),
(25, 'Tran', 'Hoang', '2018-05-29', 13),
(26, 'Ngo', 'Hieu', '2018-06-30', 13),
(27, 'Nguyen', 'Lam', '2018-07-31', 14),
(28, 'Pham', 'Minh', '2018-08-01', 14),
(29, 'Bui', 'Ngan', '2018-09-02', 15),
(30, 'Vu', 'Oanh', '2018-10-03', 15);

INSERT INTO Meals (MealID, MealName, Description) VALUES
(1, 'Rice and Chicken', 'Rice served with grilled chicken and vegetables'),
(2, 'Spaghetti', 'Spaghetti with tomato sauce and meatballs'),
(3, 'Vegetable Soup', 'Soup made with fresh vegetables'),
(4, 'Beef Stew', 'Stew made with beef and potatoes'),
(5, 'Fish Curry', 'Fish cooked with curry sauce and vegetables'),
(6, 'Chicken Salad', 'Salad made with chicken and fresh vegetables'),
(7, 'Pasta Carbonara', 'Pasta with creamy sauce and bacon'),
(8, 'Tomato Soup', 'Soup made with fresh tomatoes and basil'),
(9, 'Grilled Cheese', 'Grilled sandwich with cheese'),
(10, 'Fruit Salad', 'Salad made with fresh fruits'),
(11, 'Chicken Curry', 'Chicken cooked with curry sauce and vegetables'),
(12, 'Vegetable Stir-fry', 'Stir-fry made with mixed vegetables'),
(13, 'Pancakes', 'Pancakes served with syrup and butter'),
(14, 'Omelette', 'Omelette made with eggs and vegetables'),
(15, 'Fried Rice', 'Rice fried with vegetables andmeat'),
(16, 'Tacos', 'Tacos filled with meat and vegetables'),
(17, 'Chicken Sandwich', 'Sandwich made with chicken and vegetables'),
(18, 'Lasagna', 'Lasagna with layers of pasta, meat, and cheese'),
(19, 'Burger', 'Burger with meat patty and vegetables'),
(20, 'Fish and Chips', 'Fried fish served with chips'),
(21, 'Chicken Nuggets', 'Fried chicken nuggets served with dipping sauce'),
(22, 'Minestrone Soup', 'Soup made with mixed vegetables and pasta'),
(23, 'Steak', 'Grilled steak served with vegetables'),
(24, 'Roast Chicken', 'Chicken roasted with herbs and spices'),
(25, 'Pizza', 'Pizza topped with cheese and vegetables'),
(26, 'Burrito', 'Burrito filled with meat and beans'),
(27, 'Quesadilla', 'Quesadilla filled with cheese and vegetables'),
(28, 'Cereal', 'Cereal served with milk'),
(29, 'Yogurt Parfait', 'Yogurt layered with fruits and granola'),
(30, 'Smoothie', 'Smoothie made with fruits and yogurt');

INSERT INTO Ingredients (IngredientID, IngredientName, Quantity, Unit, PricePerUnit) VALUES
(1, 'Rice', 50, 'kg', 2.5),
(2, 'Chicken', 20, 'kg', 7.8),
(3, 'Tomato', 30, 'kg', 3.0),
(4, 'Vegetables', 40, 'kg', 1.5),
(5, 'Meatballs', 15, 'kg', 8.2),
(6, 'Beef', 25, 'kg', 10.0),
(7, 'Potatoes', 35, 'kg', 1.8),
(8, 'Fish', 20, 'kg', 9.5),
(9, 'Curry Sauce', 10, 'kg', 5.0),
(10, 'Bacon', 10, 'kg', 12.0),
(11, 'Cheese', 30, 'kg', 6.5),
(12, 'Fruits', 50, 'kg', 4.0),
(13, 'Pasta', 40, 'kg', 2.0),
(14, 'Eggs', 100, 'pieces', 0.5),
(15, 'Bread', 50, 'loaves', 2.0),
(16, 'Meat', 20, 'kg', 8.0),
(17, 'Taco Shells', 30, 'pieces', 0.8),
(18, 'Lettuce', 20, 'kg', 1.2),
(19, 'Lasagna Noodles', 25, 'kg', 2.5),
(20, 'Burger Buns', 30, 'pieces', 1.0),
(21, 'Steak', 15, 'kg', 15.0),
(22, 'Herbs', 5, 'kg', 10.0),
(23, 'Spices', 10, 'kg', 8.0),
(24, 'Pizza Dough', 25, 'kg', 3.0),
(25, 'Beans', 20, 'kg', 2.0),
(26, 'Tortillas', 30, 'pieces', 0.8),
(27, 'Milk', 50, 'liters', 1.5),
(28, 'Yogurt', 30, 'kg', 5.0),
(29, 'Granola', 20, 'kg', 6.0),
(30, 'Smoothie Mix', 25, 'kg', 4.5);

INSERT INTO MealIngredients (MealID, IngredientID, Quantity) VALUES
(1, 1, 10),
(1, 2, 5),
(2, 3, 8),
(2, 5, 4),
(3, 4, 6),
(4, 6, 7),
(4, 7, 5),
(5, 8, 6),
(5, 9, 3),
(6, 2, 5),
(6, 4, 4),
(7, 10, 3),
(7, 13, 5),
(8, 3, 6),
(8, 22, 1),
(9, 11, 4),
(10, 12, 8),
(11, 2, 5),
(11, 9, 3),
(12, 4, 6),
(13, 14, 10),
(14, 14, 6),
(14, 4, 4),
(15, 1, 8),
(15, 4, 6),
(15, 16, 4),
(16, 16, 6),
(16, 17, 5),
(17, 2, 5),
(17, 15, 3),
(18, 19, 5),
(19, 20, 5),
(20, 21, 4),
(21, 18, 6),
(22, 22, 3),
(23, 23, 6),
(24, 24, 7),
(25, 25, 8),
(26, 26, 4),
(27, 27, 5),
(28, 28, 6),
(29, 29, 7),
(30, 30, 8);

INSERT INTO MealPlans (MealPlanID, MealID, DayOfWeek, ClassID) VALUES
(1, 1, 'Monday', 1),
(2, 2, 'Tuesday', 1),
(3, 3, 'Wednesday', 2),
(4, 4, 'Thursday', 2),
(5, 5, 'Friday', 3),
(6, 6, 'Monday', 4),
(7, 7, 'Tuesday', 4),
(8, 8, 'Wednesday', 5),
(9, 9, 'Thursday', 5),
(10, 10, 'Friday', 6),
(11, 11, 'Monday', 7),
(12, 12, 'Tuesday', 7),
(13, 13, 'Wednesday', 8),
(14, 14, 'Thursday', 8),
(15, 15, 'Friday', 9),
(16, 16, 'Monday', 10),
(17, 17, 'Tuesday', 10),
(18, 18, 'Wednesday', 11),
(19, 19, 'Thursday', 11),
(20, 20, 'Friday', 12),
(21, 21, 'Monday', 13),
(22, 22, 'Tuesday', 13),
(23, 23, 'Wednesday', 14),
(24, 24, 'Thursday', 14),
(25, 25, 'Friday', 15),
(26, 26, 'Monday', 16),
(27, 27, 'Tuesday', 16),
(28, 28, 'Wednesday', 17),
(29, 29, 'Thursday', 17),
(30, 30, 'Friday', 18);

INSERT INTO Allergies (AllergyID, AllergyName) VALUES
(1, 'Peanut'),
(2, 'Dairy'),
(3, 'Gluten'),
(4, 'Soy'),
(5, 'Eggs'),
(6, 'Fish'),
(7, 'Shellfish'),
(8, 'Tree Nuts'),
(9, 'Wheat'),
(10, 'Corn'),
(11, 'Sesame'),
(12, 'Mustard'),
(13, 'Celery'),
(14, 'Lupin'),
(15, 'Molluscs'),
(16, 'Sulfites'),
(17, 'Tomato'),
(18, 'Citrus'),
(19, 'Strawberry'),
(20, 'Apple'),
(21, 'Banana'),
(22, 'Kiwi'),
(23, 'Peach'),
(24, 'Plum'),
(25, 'Pineapple'),
(26, 'Mango'),
(27, 'Avocado'),
(28, 'Garlic'),
(29, 'Onion'),
(30, 'Pepper');

INSERT INTO StudentAllergies (StudentID, AllergyID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30);








--Thêm dữ liệu bảng Student
INSERT INTO Students (StudentID, FirstName, LastName, DateOfBirth, ClassID) VALUES
(1, 'Nguyen', 'Anh', '2018-05-20', 1),
(2, 'Tran', 'Binh', '2018-06-15', 1),
(3, 'Le', 'Chau', '2018-07-10', 2),
(4, 'Pham', 'Duong', '2018-08-05', 2),
(5, 'Hoang', 'Giao', '2018-09-01', 3),
(6, 'Vu', 'Hoang', '2018-10-10', 3),
(7, 'Phan', 'Hieu', '2018-11-11', 1),
(8, 'Do', 'Lam', '2018-12-12', 2),
(9, 'Ngo', 'Minh', '2018-01-13', 3),
(10, 'Ha', 'Ngan', '2018-02-14', 1),
(11, 'Bui', 'Oanh', '2018-03-15', 2),
(12, 'Duong', 'Phuc', '2018-04-16', 3),
(13, 'Tran', 'Quynh', '2018-05-17', 1),
(14, 'Ngo', 'Son', '2018-06-18', 2),
(15, 'Nguyen', 'Tam', '2018-07-19', 3),
(16, 'Pham', 'Uyen', '2018-08-20', 1),
(17, 'Bui', 'Van', '2018-09-21', 2),
(18, 'Vu', 'Xuan', '2018-10-22', 3),
(19, 'Phan', 'Yen', '2018-11-23', 1),
(20, 'Do', 'Anh', '2018-12-24', 2),
(21, 'Ngo', 'Binh', '2018-01-25', 3),
(22, 'Ha', 'Chau', '2018-02-26', 1),
(23, 'Bui', 'Duong', '2018-03-27', 2),
(24, 'Duong', 'Giao', '2018-04-28', 3),
(25, 'Tran', 'Hoang', '2018-05-29', 1),
(26, 'Ngo', 'Hieu', '2018-06-30', 2),
(27, 'Nguyen', 'Lam', '2018-07-31', 3),
(28, 'Pham', 'Minh', '2018-08-01', 1),
(29, 'Bui', 'Ngan', '2018-09-02', 2),
(30, 'Vu', 'Oanh', '2018-10-03', 3);


--Thêm dữ liệu bảng Classes
INSERT INTO Classes (ClassID, ClassName, TeacherID) VALUES
(1, 'Class A', 1),
(2, 'Class B', 2),
(3, 'Class C', 3),
(4, 'Class D', 4),
(5, 'Class E', 5),
(6, 'Class F', 6),
(7, 'Class G', 7),
(8, 'Class H', 8),
(9, 'Class I', 9),
(10, 'Class J', 10),
(11, 'Class K', 11),
(12, 'Class L', 12),
(13, 'Class M', 13),
(14, 'Class N', 14),
(15, 'Class O', 15),
(16, 'Class P', 16),
(17, 'Class Q', 17),
(18, 'Class R', 18),
(19, 'Class S', 19),
(20, 'Class T', 20),
(21, 'Class U', 21),
(22, 'Class V', 22),
(23, 'Class W', 23),
(24, 'Class X', 24),
(25, 'Class Y', 25),
(26, 'Class Z', 26),
(27, 'Class AA', 27),
(28, 'Class AB', 28),
(29, 'Class AC', 29),
(30, 'Class AD', 30);

--Thêm dữ liệu bảng Terachers 
INSERT INTO Teachers (TeacherID, FirstName, LastName, PhoneNumber, Email) VALUES
(1, 'Nguyen', 'Van A', '0123456789', 'a@school.com'),
(2, 'Tran', 'Thi B', '0987654321', 'b@school.com'),
(3, 'Le', 'Van C', '0123987654', 'c@school.com'),
(4, 'Pham', 'Thi D', '0123456780', 'd@school.com'),
(5, 'Hoang', 'Van E', '0987654322', 'e@school.com'),
(6, 'Vu', 'Thi F', '0123987651', 'f@school.com'),
(7, 'Phan', 'Van G', '0123456782', 'g@school.com'),
(8, 'Do', 'Thi H', '0987654323', 'h@school.com'),
(9, 'Ngo', 'Van I', '0123987653', 'i@school.com'),
(10, 'Ha', 'Thi J', '0123456784', 'j@school.com'),
(11, 'Bui', 'Van K', '0987654324', 'k@school.com'),
(12, 'Duong', 'Thi L', '0123987655', 'l@school.com'),
(13, 'Tran', 'Van M', '0123456786', 'm@school.com'),
(14, 'Ngo', 'Thi N', '0987654325', 'n@school.com'),
(15, 'Nguyen', 'Van O', '0123987657', 'o@school.com'),
(16, 'Pham', 'Thi P', '0123456788', 'p@school.com'),
(17, 'Bui', 'Van Q', '0987654326', 'q@school.com'),
(18, 'Vu', 'Thi R', '0123987659', 'r@school.com'),
(19, 'Phan', 'Van S', '0123456790', 's@school.com'),
(20, 'Do', 'Thi T', '0987654327', 't@school.com'),
(21, 'Ngo', 'Van U', '0123987660', 'u@school.com'),
(22, 'Ha', 'Thi V', '0123456791', 'v@school.com'),
(23, 'Bui', 'Van W', '0987654328', 'w@school.com'),
(24, 'Duong', 'Thi X', '0123987662', 'x@school.com'),
(25, 'Tran', 'Van Y', '0123456793', 'y@school.com'),
(26, 'Ngo', 'Thi Z', '0987654329', 'z@school.com'),
(27, 'Nguyen', 'Van AA', '0123987664', 'aa@school.com'),
(28, 'Pham', 'Thi AB', '0123456795', 'ab@school.com'),
(29, 'Bui', 'Van AC', '0987654330', 'ac@school.com'),
(30, 'Vu', 'Thi AD', '0123987666', 'ad@school.com');

--Thêm dữ liệu bảng Meals
INSERT INTO Meals (MealID, MealName, Description) VALUES
(1, 'Rice and Chicken', 'Rice served with grilled chicken and vegetables'),
(2, 'Spaghetti', 'Spaghetti with tomato sauce and meatballs'),
(3, 'Vegetable Soup', 'Soup made with fresh vegetables'),
(4, 'Beef Stew', 'Stew made with beef and potatoes'),
(5, 'Fish Curry', 'Fish cooked with curry sauce and vegetables'),
(6, 'Chicken Salad', 'Salad made with chicken and fresh vegetables'),
(7, 'Pasta Carbonara', 'Pasta with creamy sauce and bacon'),
(8, 'Tomato Soup', 'Soup made with fresh tomatoes and basil'),
(9, 'Grilled Cheese', 'Grilled sandwich with cheese'),
(10, 'Fruit Salad', 'Salad made with fresh fruits'),
(11, 'Chicken Curry', 'Chicken cooked with curry sauce and vegetables'),
(12, 'Vegetable Stir-fry', 'Stir-fry made with mixed vegetables'),
(13, 'Pancakes', 'Pancakes served with syrup and butter'),
(14, 'Omelette', 'Omelette made with eggs and vegetables'),
(15, 'Fried Rice', 'Rice fried with vegetables and meat'),
(16, 'Tacos', 'Tacos filled with meat and vegetables'),
(17, 'Chicken Sandwich', 'Sandwich made with chicken and vegetables'),
(18, 'Lasagna', 'Lasagna with layers of pasta, meat, and cheese'),
(19, 'Burger', 'Burger with meat patty and vegetables'),
(20, 'Fish and Chips', 'Fried fish served with chips'),
(21, 'Chicken Nuggets', 'Fried chicken nuggets served with dipping sauce'),
(22, 'Minestrone Soup', 'Soup made with mixed vegetables and pasta'),
(23, 'Steak', 'Grilled steak served with vegetables'),
(24, 'Roast Chicken', 'Chicken roasted with herbs and spices'),
(25, 'Pizza', 'Pizza topped with cheese and vegetables'),
(26, 'Burrito', 'Burrito filled with meat and beans'),
(27, 'Quesadilla', 'Quesadilla filled with cheese and vegetables'),
(28, 'Cereal', 'Cereal served with milk'),
(29, 'Yogurt Parfait', 'Yogurt layered with fruits and granola'),
(30, 'Smoothie', 'Smoothie made with fruits and yogurt');

--Thêm dữ liệu bảng Ingredients
INSERT INTO Ingredients (IngredientID, IngredientName, Quantity, Unit, PricePerUnit) VALUES
(1, 'Rice', 50, 'kg', 2.5),
(2, 'Chicken', 20, 'kg', 7.8),
(3, 'Tomato', 30, 'kg', 3.0),
(4, 'Vegetables', 40, 'kg', 1.5),
(5, 'Meatballs', 15, 'kg', 8.2),
(6, 'Beef', 25, 'kg', 10.0),
(7, 'Potatoes', 35, 'kg', 1.8),
(8, 'Fish', 20, 'kg', 9.5),
(9, 'Curry Sauce', 10, 'kg', 5.0),
(10, 'Bacon', 10, 'kg', 12.0),
(11, 'Cheese', 30, 'kg', 6.5),
(12, 'Fruits', 50, 'kg', 4.0),
(13, 'Pasta', 40, 'kg', 2.0),
(14, 'Eggs', 100, 'pieces', 0.5),
(15, 'Bread', 50, 'loaves', 2.0),
(16, 'Meat', 20, 'kg', 8.0),
(17, 'Taco Shells', 30, 'pieces', 0.8),
(18, 'Lettuce', 20, 'kg', 1.2),
(19, 'Lasagna Noodles', 25, 'kg', 2.5),
(20, 'Burger Buns', 30, 'pieces', 1.0),
(21, 'Steak', 15, 'kg', 15.0),
(22, 'Herbs', 5, 'kg', 10.0),
(23, 'Spices', 10, 'kg', 8.0),
(24, 'Pizza Dough', 25, 'kg', 3.0),
(25, 'Beans', 20, 'kg', 2.0),
(26, 'Tortillas', 30, 'pieces', 0.8),
(27, 'Milk', 50, 'liters', 1.5),
(28, 'Yogurt', 30, 'kg', 5.0),
(29, 'Granola', 20, 'kg', 6.0),
(30, 'Smoothie Mix', 25, 'kg', 4.5);

--Thêm dữ liệu bảng MealIngredients
INSERT INTO MealIngredients (MealID, IngredientID, Quantity) VALUES
(1, 1, 10),
(1, 2, 5),
(2, 3, 8),
(2, 5, 4),
(3, 4, 6),
(4, 6, 7),
(4, 7, 5),
(5, 8, 6),
(5, 9, 3),
(6, 2, 5),
(6, 4, 4),
(7, 10, 3),
(7, 13, 5),
(8, 3, 6),
(8, 22, 1),
(9, 11, 4),
(10, 12, 8),
(11, 2, 5),
(11, 9, 3),
(12, 4, 6),
(13, 14, 10),
(14, 14, 6),
(14, 4, 4),
(15, 1, 8),
(15, 4, 6),
(15, 16, 4),
(16, 16, 6),
(16, 17, 5),
(17, 2, 5),
(17, 15, 3);

--Thêm dư liệu bảng MealPlans
INSERT INTO MealPlans (MealPlanID, MealID, DayOfWeek, ClassID) VALUES
(1, 1, 'Monday', 1),
(2, 2, 'Tuesday', 1),
(3, 3, 'Wednesday', 2),
(4, 4, 'Thursday', 2),
(5, 5, 'Friday', 3),
(6, 6, 'Monday', 4),
(7, 7, 'Tuesday', 4),
(8, 8, 'Wednesday', 5),
(9, 9, 'Thursday', 5),
(10, 10, 'Friday', 6),
(11, 11, 'Monday', 7),
(12, 12, 'Tuesday', 7),
(13, 13, 'Wednesday', 8),
(14, 14, 'Thursday', 8),
(15, 15, 'Friday', 9),
(16, 16, 'Monday', 10),
(17, 17, 'Tuesday', 10),
(18, 18, 'Wednesday', 11),
(19, 19, 'Thursday', 11),
(20, 20, 'Friday', 12),
(21, 21, 'Monday', 13),
(22, 22, 'Tuesday', 13),
(23, 23, 'Wednesday', 14),
(24, 24, 'Thursday', 14),
(25, 25, 'Friday', 15),
(26, 26, 'Monday', 16),
(27, 27, 'Tuesday', 16),
(28, 28, 'Wednesday', 17),
(29, 29, 'Thursday', 17),
(30, 30, 'Friday', 18);

--Thêm dữ liểu bảng Allergies
INSERT INTO Allergies (AllergyID, AllergyName) VALUES
(1, 'Peanut'),
(2, 'Dairy'),
(3, 'Gluten'),
(4, 'Soy'),
(5, 'Eggs'),
(6, 'Fish'),
(7, 'Shellfish'),
(8, 'Tree Nuts'),
(9, 'Wheat'),
(10, 'Corn'),
(11, 'Sesame'),
(12, 'Mustard'),
(13, 'Celery'),
(14, 'Lupin'),
(15, 'Molluscs'),
(16, 'Sulfites'),
(17, 'Tomato'),
(18, 'Citrus'),
(19, 'Strawberry'),
(20, 'Apple'),
(21, 'Banana'),
(22, 'Kiwi'),
(23, 'Peach'),
(24, 'Plum'),
(25, 'Pineapple'),
(26, 'Mango'),
(27, 'Avocado'),
(28, 'Garlic'),
(29, 'Onion'),
(30, 'Pepper');

--Thêm dữ liệu bảng StudentAllergies
INSERT INTO StudentAllergies (StudentID, AllergyID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30);
