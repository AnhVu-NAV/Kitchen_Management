CREATE DATABASE KitchenManagement
ON 
(
    NAME = N'KitchenManagement',
    FILENAME = 'D:\Anh Vu Nguyen\FPT_University\Semester 3\DBI202\Assigment_2\Data\KitchenManagement.mdf',
    SIZE = 8192KB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 65536KB
)
LOG ON 
(
    NAME = N'KitchenManagement_log',
    FILENAME = 'D:\Anh Vu Nguyen\FPT_University\Semester 3\DBI202\Assigment_2\Data\KitchenManagement_log.ldf',
    SIZE = 8192KB,
    MAXSIZE = 2048GB,
    FILEGROWTH = 65536KB
);



USE KitchenManagement;

-- Tạo bảng Teachers
CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(50)
);

-- Tạo bảng Classes
CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(50),
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
);

-- Tạo bảng Students
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    ClassID INT,
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);

-- Tạo bảng Meals
CREATE TABLE Meals (
    MealID INT PRIMARY KEY,
    MealName VARCHAR(50),
    Description TEXT
);

-- Tạo bảng Ingredients
CREATE TABLE Ingredients (
    IngredientID INT PRIMARY KEY,
    IngredientName VARCHAR(50),
    Quantity FLOAT,
    Unit VARCHAR(10),
    PricePerUnit FLOAT
);

-- Tạo bảng MealPlans
CREATE TABLE MealPlans (
    MealPlanID INT PRIMARY KEY,
    MealID INT,
    DayOfWeek VARCHAR(10),
    ClassID INT,
    FOREIGN KEY (MealID) REFERENCES Meals(MealID),
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);

-- Tạo bảng MealIngredients
CREATE TABLE MealIngredients (
    MealID INT,
    IngredientID INT,
    Quantity FLOAT,
    PRIMARY KEY (MealID, IngredientID),
    FOREIGN KEY (MealID) REFERENCES Meals(MealID),
    FOREIGN KEY (IngredientID) REFERENCES Ingredients(IngredientID)
);

-- Tạo bảng Allergies
CREATE TABLE Allergies (
    AllergyID INT PRIMARY KEY,
    AllergyName VARCHAR(50)
);

-- Tạo bảng StudentAllergies
CREATE TABLE StudentAllergies (
    StudentID INT,
    AllergyID INT,
    PRIMARY KEY (StudentID, AllergyID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (AllergyID) REFERENCES Allergies(AllergyID)
);
