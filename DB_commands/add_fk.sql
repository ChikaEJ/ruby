 # Изменение таблицы. Добавление внешнего ключа
ALTER TABLE study.products
ADD COLUMN brand_id INT DEFAULT NULL,
ADD INDEX FK_brand_idx (brand_id),
ADD CONSTRAINT FK_brand
  FOREIGN KEY (brand_id)
  REFERENCES study.brands (id)
  ON DELETE RESTRICT
  ON UPDATE CASCADE;
  