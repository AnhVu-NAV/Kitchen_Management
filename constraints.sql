-- Thêm ràng buộc ngoại khóa giữa bảng Students và bảng Classes
-- Khóa ngoại ClassID trong bảng Students tham chiếu đến khóa chính ClassID trong bảng Classes
ALTER TABLE Students
ADD CONSTRAINT FK_Students_Classes FOREIGN KEY (ClassID) REFERENCES Classes(ClassID);

-- Thêm ràng buộc ngoại khóa giữa bảng Classes và bảng Teachers
-- Khóa ngoại TeacherID trong bảng Classes tham chiếu đến khóa chính TeacherID trong bảng Teachers
ALTER TABLE Classes
ADD CONSTRAINT FK_Classes_Teachers FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID);

-- Thêm ràng buộc ngoại khóa giữa bảng MealPlans và bảng Meals
-- Khóa ngoại MealID trong bảng MealPlans tham chiếu đến khóa chính MealID trong bảng Meals
ALTER TABLE MealPlans
ADD CONSTRAINT FK_MealPlans_Meals FOREIGN KEY (MealID) REFERENCES Meals(MealID);

-- Thêm ràng buộc ngoại khóa giữa bảng MealPlans và bảng Classes
-- Khóa ngoại ClassID trong bảng MealPlans tham chiếu đến khóa chính ClassID trong bảng Classes
ALTER TABLE MealPlans
ADD CONSTRAINT FK_MealPlans_Classes FOREIGN KEY (ClassID) REFERENCES Classes(ClassID);

-- Thêm ràng buộc ngoại khóa giữa bảng MealIngredients và bảng Meals
-- Khóa ngoại MealID trong bảng MealIngredients tham chiếu đến khóa chính MealID trong bảng Meals
ALTER TABLE MealIngredients
ADD CONSTRAINT FK_MealIngredients_Meals FOREIGN KEY (MealID) REFERENCES Meals(MealID);

-- Thêm ràng buộc ngoại khóa giữa bảng MealIngredients và bảng Ingredients
-- Khóa ngoại IngredientID trong bảng MealIngredients tham chiếu đến khóa chính IngredientID trong bảng Ingredients
ALTER TABLE MealIngredients
ADD CONSTRAINT FK_MealIngredients_Ingredients FOREIGN KEY (IngredientID) REFERENCES Ingredients(IngredientID);

-- Thêm ràng buộc ngoại khóa giữa bảng StudentAllergies và bảng Students
-- Khóa ngoại StudentID trong bảng StudentAllergies tham chiếu đến khóa chính StudentID trong bảng Students
ALTER TABLE StudentAllergies
ADD CONSTRAINT FK_StudentAllergies_Students FOREIGN KEY (StudentID) REFERENCES Students(StudentID);

-- Thêm ràng buộc ngoại khóa giữa bảng StudentAllergies và bảng Allergies
-- Khóa ngoại AllergyID trong bảng StudentAllergies tham chiếu đến khóa chính AllergyID trong bảng Allergies
ALTER TABLE StudentAllergies
ADD CONSTRAINT FK_StudentAllergies_Allergies FOREIGN KEY (AllergyID) REFERENCES Allergies(AllergyID);
