CREATE DATABASE KitchenManagement;

USE KitchenManagement;

-- Tạo bảng Students
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    ClassID INT,
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);

-- Tạo bảng Classes
CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(50),
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
);

-- Tạo bảng Teachers
CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(50)
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
