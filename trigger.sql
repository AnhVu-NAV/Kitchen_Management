﻿--Trigger kích hoạt sau khi thêm học sinh mới.
CREATE TRIGGER trgAfterInsertStudent
ON Students
AFTER INSERT
AS
BEGIN
    DECLARE @StudentID INT, @FirstName VARCHAR(50), @LastName VARCHAR(50);
    SELECT @StudentID = INSERTED.StudentID, @FirstName = INSERTED.FirstName, @LastName = INSERTED.LastName 
    FROM INSERTED;
    PRINT 'New student added: ' + @FirstName + ' ' + @LastName + ' with ID: ' + CAST(@StudentID AS VARCHAR);
END;

INSERT INTO Students (StudentID, FirstName, LastName, DateOfBirth, ClassID)
VALUES (31, 'Pham', 'Tuan', '2018-11-15', 3);


--Trigger kích hoạt sau khi thêm bữa ăn mới.
CREATE TRIGGER trgAfterInsertMeal
ON Meals
AFTER INSERT
AS
BEGIN
    DECLARE @MealID INT, @MealName VARCHAR(50);
    SELECT @MealID = INSERTED.MealID, @MealName = INSERTED.MealName 
    FROM INSERTED;
    PRINT 'New meal added: ' + @MealName + ' with ID: ' + CAST(@MealID AS VARCHAR);
END;

INSERT INTO Meals (MealID, MealName, Description)
VALUES (31, 'Grilled Salmon', 'Grilled salmon served with steamed vegetables');
