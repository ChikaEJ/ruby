# Варианты определения контекста исполнения запроса
-- 1 вариант: установить базу по умолчанию в навигаторе через контекстное меню - Set as Default Schema
-- 2 вариант: использовать команду use: 
Use study;
CREATE TABLE categories (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name_category VARCHAR(45) NOT NULL DEFAULT 'name category');

-- 3 вариант: явно указать имя базы перед именем создаваемой таблицы, отделив его точкой:
CREATE TABLE study.categories (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name_category VARCHAR(45) NOT NULL DEFAULT 'name category');