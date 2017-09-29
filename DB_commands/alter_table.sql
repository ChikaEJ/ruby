# Изменение таблицы - изменение полей и добавление полей/индексов
ALTER TABLE study.categories 
CHANGE COLUMN name_category category VARCHAR(45) NOT NULL DEFAULT 'name category',
ADD COLUMN description VARCHAR(100) NOT NULL AFTER category,
ADD COLUMN add_description VARCHAR(100) NOT NULL AFTER description,
ADD INDEX category_idx (category);