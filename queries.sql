-- a. Query using inner join
-- Truy vấn thông tin học sinh và lớp học của họ
SELECT Students.FirstName, Students.LastName, Classes.ClassName
FROM Students
INNER JOIN Classes ON Students.ClassID = Classes.ClassID;

-- Truy vấn thông tin giáo viên và lớp học mà họ chủ nhiệm
SELECT Teachers.FirstName, Teachers.LastName, Classes.ClassName
FROM Teachers
INNER JOIN Classes ON Teachers.TeacherID = Classes.TeacherID;

-- b. Query using outer join
-- Truy vấn thông tin giáo viên và lớp học, bao gồm cả giáo viên không chủ nhiệm lớp nào
SELECT Teachers.FirstName, Teachers.LastName, Classes.ClassName
FROM Teachers
LEFT OUTER JOIN Classes ON Teachers.TeacherID = Classes.TeacherID;

-- Truy vấn thông tin lớp học và học sinh, bao gồm cả lớp học chưa có học sinh
SELECT Classes.ClassName, Students.FirstName, Students.LastName
FROM Classes
LEFT OUTER JOIN Students ON Classes.ClassID = Students.ClassID;

-- c. Using subquery in where
-- Truy vấn bữa ăn dành cho một lớp cụ thể trong một ngày cụ thể
SELECT MealName, Description
FROM Meals
WHERE MealID IN (SELECT MealID FROM MealPlans WHERE ClassID = 1 AND DayOfWeek = 'Monday');

-- Truy vấn học sinh không bị dị ứng nào
SELECT FirstName, LastName
FROM Students
WHERE StudentID NOT IN (SELECT StudentID FROM StudentAllergies);

-- d. Using subquery in from
-- Truy vấn tổng số học sinh trong mỗi lớp học
SELECT ClassName, StudentCount
FROM (SELECT ClassID, COUNT(*) AS StudentCount FROM Students GROUP BY ClassID) AS SubQuery
INNER JOIN Classes ON SubQuery.ClassID = Classes.ClassID;

-- Truy vấn tổng chi phí nguyên liệu cho mỗi bữa ăn
SELECT Meals.MealName, TotalCost
FROM (SELECT MealID, SUM(Quantity * PricePerUnit) AS TotalCost FROM MealIngredients INNER JOIN Ingredients ON MealIngredients.IngredientID = Ingredients.IngredientID GROUP BY MealID) AS SubQuery
INNER JOIN Meals ON SubQuery.MealID = Meals.MealID;

-- e. Query using group by and aggregate functions
-- Truy vấn tổng số lượng mỗi nguyên liệu cần thiết
SELECT IngredientName, SUM(Quantity) AS TotalQuantity
FROM MealIngredients
INNER JOIN Ingredients ON MealIngredients.IngredientID = Ingredients.IngredientID
GROUP BY IngredientName;

-- Truy vấn tổng chi phí nguyên liệu cho mỗi loại nguyên liệu
SELECT IngredientName, SUM(Quantity * PricePerUnit) AS TotalCost
FROM MealIngredients
INNER JOIN Ingredients ON MealIngredients.IngredientID = Ingredients.IngredientID
GROUP BY IngredientName;

-- Tổng số suất ăn trong một ngày cụ thể
SELECT DayOfWeek, COUNT(*) AS TotalMeals
FROM MealPlans
WHERE DayOfWeek = 'Monday'
GROUP BY DayOfWeek;

-- Các bữa ăn của một ngày cụ thể
SELECT Meals.MealName, Meals.Description
FROM Meals
INNER JOIN MealPlans ON Meals.MealID = MealPlans.MealID
WHERE MealPlans.DayOfWeek = 'Monday';
