# Вариант указания внешнего ключа в запросе на создание таблицы – без оператора CONSTRAINT:
CREATE TABLE study.products (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  category_id INT NOT NULL,
  product VARCHAR(45) NOT NULL,
  description VARCHAR(100),
  INDEX FK_category_idx (category_id),
    FOREIGN KEY FK_category (category_id)
    REFERENCES study.categories (id)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE);