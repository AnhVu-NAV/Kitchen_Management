--Lấy danh sách học sinh trong một lớp học cụ thể
CREATE PROCEDURE GetStudentsByClassID
    @ClassID INT
AS
BEGIN
    SELECT StudentID, FirstName, LastName, DateOfBirth
    FROM Students
    WHERE ClassID = @ClassID;
END;


--Lấy danh sách bữa ăn trong một ngày cụ thể
CREATE PROCEDURE GetMealsByDay
    @DayOfWeek VARCHAR(10)
AS
BEGIN
    SELECT Meals.MealID, Meals.MealName, Meals.Description
    FROM Meals
    INNER JOIN MealPlans ON Meals.MealID = MealPlans.MealID
    WHERE MealPlans.DayOfWeek = @DayOfWeek;
END;


--Lấy danh sách học sinh có dị ứng cụ thể
CREATE PROCEDURE GetStudentsWithAllergies
    @AllergyID INT
AS
BEGIN
    SELECT Students.StudentID, Students.FirstName, Students.LastName
    FROM Students
    INNER JOIN StudentAllergies ON Students.StudentID = StudentAllergies.StudentID
    WHERE StudentAllergies.AllergyID = @AllergyID;
END;


--Tính tổng chi phí các bữa ăn cho một lớp học trong một ngày cụ thể
CREATE PROCEDURE GetTotalMealCostForClassByDay
    @ClassID INT,
    @DayOfWeek VARCHAR(10)
AS
BEGIN
    SELECT SUM(Quantity * PricePerUnit) AS TotalCost
    FROM MealPlans
    INNER JOIN MealIngredients ON MealPlans.MealID = MealIngredients.MealID
    INNER JOIN Ingredients ON MealIngredients.IngredientID = Ingredients.IngredientID
    WHERE MealPlans.ClassID = @ClassID AND MealPlans.DayOfWeek = @DayOfWeek;
END;
