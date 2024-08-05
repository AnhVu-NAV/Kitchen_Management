--Hàm lấy họ và tên đầy đủ của học sinh.
CREATE FUNCTION GetStudentFullName (@StudentID INT)
RETURNS VARCHAR(100)
AS
BEGIN
    DECLARE @FullName VARCHAR(100);
    SELECT @FullName = FirstName + ' ' + LastName 
    FROM Students 
    WHERE StudentID = @StudentID;
    RETURN @FullName;
END;


--Hàm tính tổng chi phí của một bữa ăn
CREATE FUNCTION CalculateMealCost (@MealID INT)
RETURNS FLOAT
AS
BEGIN
    DECLARE @TotalCost FLOAT;
    SELECT @TotalCost = SUM(Quantity * PricePerUnit)
    FROM MealIngredients
    INNER JOIN Ingredients ON MealIngredients.IngredientID = Ingredients.IngredientID
    WHERE MealIngredients.MealID = @MealID;
    RETURN @TotalCost;
END;


