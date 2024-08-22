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

SELECT dbo.GetStudentFullName(1) AS FullName;

--Hàm tính tổng chi phí của một bữa ăn
CREATE FUNCTION CalculateMealCost (@MealID INT)
RETURNS FLOAT
AS
BEGIN
    DECLARE @TotalCost FLOAT;
    SELECT @TotalCost = SUM(MealIngredients.Quantity * PricePerUnit)
    FROM MealIngredients
    INNER JOIN Ingredients ON MealIngredients.IngredientID = Ingredients.IngredientID
    WHERE MealIngredients.MealID = @MealID;
    RETURN @TotalCost;
END;

SELECT dbo.CalculateMealCost(1) AS TotalCost;

--Hàm kiểm tra xem một học sinh có dị ứng với bất kỳ thành phần nào trong một bữa ăn không
CREATE FUNCTION IsStudentAllergicToMeal (@StudentID INT, @MealID INT)
RETURNS BIT
AS
BEGIN
    DECLARE @IsAllergic BIT;

    -- Kiểm tra xem có nguyên liệu nào trong bữa ăn mà học sinh bị dị ứng hay không
    IF EXISTS (
        SELECT 1
        FROM MealIngredients MI
        INNER JOIN Ingredients I ON MI.IngredientID = I.IngredientID
        INNER JOIN StudentAllergies SA ON I.IngredientID = SA.AllergyID
        WHERE MI.MealID = @MealID AND SA.StudentID = @StudentID
    )
    BEGIN
        SET @IsAllergic = 1;  -- Học sinh bị dị ứng với bữa ăn này
    END
    ELSE
    BEGIN
        SET @IsAllergic = 0;  -- Học sinh không bị dị ứng với bữa ăn này
    END

    RETURN @IsAllergic;
END;

SELECT dbo.IsStudentAllergicToMeal(1, 2) AS IsAllergic;
