# Kitchen_Management
# Hệ thống Quản lý Bếp ăn của Trường Mẫu giáo

## Giới thiệu
Hệ thống Quản lý Bếp ăn của Trường Mẫu giáo là một dự án nhằm thiết kế, triển khai và thao tác một cơ sở dữ liệu trong SQL Server theo các yêu cầu của một hệ thống quản lý bếp ăn. Hệ thống này giúp quản lý thông tin về học sinh, lớp học, giáo viên, các bữa ăn, nguyên liệu, kế hoạch bữa ăn và các dị ứng của học sinh.

## Cấu trúc dự án
Dự án bao gồm các file SQL để tạo và quản lý cơ sở dữ liệu, bao gồm:

- `createDB.sql`: Tạo cơ sở dữ liệu và các bảng.
- `constraints.sql`: Tạo các ràng buộc cho cơ sở dữ liệu.
- `insert.sql`: Chèn dữ liệu mẫu vào các bảng.
- `queries.sql`: Các truy vấn SQL để lấy dữ liệu từ cơ sở dữ liệu.
- `function.sql`: Định nghĩa một hàm trong SQL Server.
- `trigger.sql`: Định nghĩa một trigger trong SQL Server.
- `procedure.sql`: Định nghĩa một thủ tục trong SQL Server.

## Các bảng và mối quan hệ
Hệ thống bao gồm các bảng sau:

- `Students`: Quản lý thông tin học sinh.
- `Classes`: Quản lý thông tin lớp học.
- `Teachers`: Quản lý thông tin giáo viên.
- `Meals`: Quản lý thông tin các bữa ăn.
- `Ingredients`: Quản lý thông tin nguyên liệu.
- `MealPlans`: Quản lý kế hoạch bữa ăn.
- `MealIngredients`: Quản lý thông tin nguyên liệu sử dụng cho từng bữa ăn.
- `Allergies`: Quản lý thông tin các loại dị ứng.
- `StudentAllergies`: Quản lý thông tin dị ứng của từng học sinh.

Các mối quan hệ giữa các bảng:

- `Students` và `Classes`: Mối quan hệ một-nhiều.
- `Classes` và `Teachers`: Mối quan hệ một-một.
- `MealPlans` và `Meals`: Mối quan hệ một-nhiều.
- `MealPlans` và `Classes`: Mối quan hệ một-nhiều.
- `MealIngredients` và `Meals`: Mối quan hệ nhiều-nhiều.
- `MealIngredients` và `Ingredients`: Mối quan hệ nhiều-nhiều.
- `StudentAllergies` và `Students`: Mối quan hệ nhiều-nhiều.
- `StudentAllergies` và `Allergies`: Mối quan hệ nhiều-nhiều.

## Hướng dẫn sử dụng
1. **Tạo cơ sở dữ liệu và các bảng**:
   - Chạy file `createDB.sql` để tạo cơ sở dữ liệu và các bảng.

2. **Tạo các ràng buộc**:
   - Chạy file `constraints.sql` để tạo các ràng buộc cho cơ sở dữ liệu.

3. **Chèn dữ liệu mẫu**:
   - Chạy file `insert.sql` để chèn dữ liệu mẫu vào các bảng.

4. **Thực hiện các truy vấn**:
   - Chạy file `queries.sql` để thực hiện các truy vấn SQL và lấy dữ liệu từ cơ sở dữ liệu.

5. **Tạo hàm**:
   - Chạy file `function.sql` để tạo một hàm trong SQL Server.

6. **Tạo trigger**:
   - Chạy file `trigger.sql` để tạo một trigger trong SQL Server.

7. **Tạo thủ tục**:
   - Chạy file `procedure.sql` để tạo một thủ tục trong SQL Server.

## Các truy vấn SQL mẫu
Dưới đây là một số truy vấn SQL mẫu:

### Query using inner join
```sql
-- Truy vấn thông tin học sinh và lớp học của họ
SELECT Students.FirstName, Students.LastName, Classes.ClassName
FROM Students
INNER JOIN Classes ON Students.ClassID = Classes.ClassID;

-- Truy vấn thông tin giáo viên và lớp học mà họ chủ nhiệm
SELECT Teachers.FirstName, Teachers.LastName, Classes.ClassName
FROM Teachers
INNER JOIN Classes ON Teachers.TeacherID = Classes.TeacherID;
```
### Query using outer join
```sql
-- Truy vấn thông tin giáo viên và lớp học, bao gồm cả giáo viên không chủ nhiệm lớp nào
SELECT Teachers.FirstName, Teachers.LastName, Classes.ClassName
FROM Teachers
LEFT OUTER JOIN Classes ON Teachers.TeacherID = Classes.TeacherID;

-- Truy vấn thông tin lớp học và học sinh, bao gồm cả lớp học chưa có học sinh
SELECT Classes.ClassName, Students.FirstName, Students.LastName
FROM Classes
LEFT OUTER JOIN Students ON Classes.ClassID = Students.ClassID;
```

### Using subquery in where
```sql
-- Truy vấn bữa ăn dành cho một lớp cụ thể trong một ngày cụ thể
SELECT MealName, Description
FROM Meals
WHERE MealID IN (SELECT MealID FROM MealPlans WHERE ClassID = 1 AND DayOfWeek = 'Monday');

-- Truy vấn học sinh không bị dị ứng nào
SELECT FirstName, LastName
FROM Students
WHERE StudentID NOT IN (SELECT StudentID FROM StudentAllergies);
```

### Using subquery in from
```sql
-- Truy vấn tổng số học sinh trong mỗi lớp học
SELECT ClassName, StudentCount
FROM (SELECT ClassID, COUNT(*) AS StudentCount FROM Students GROUP BY ClassID) AS SubQuery
INNER JOIN Classes ON SubQuery.ClassID = Classes.ClassID;

-- Truy vấn tổng chi phí nguyên liệu cho mỗi bữa ăn
SELECT Meals.MealName, TotalCost
FROM (SELECT MealID, SUM(Quantity * PricePerUnit) AS TotalCost FROM MealIngredients INNER JOIN Ingredients ON MealIngredients.IngredientID = Ingredients.IngredientID GROUP BY MealID) AS SubQuery
INNER JOIN Meals ON SubQuery.MealID = Meals.MealID;
```

### Query using group by and aggregate functions
```sql
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
```
