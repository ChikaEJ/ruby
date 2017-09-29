# Создание таблицы с внешним ключом
CREATE TABLE study.products (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  category_id INT NOT NULL,
  product VARCHAR(45) NOT NULL,
  description VARCHAR(100),
  INDEX FK_category_idx (category_id), # создание индекса
  CONSTRAINT FK_category #создание внешнего ключа
    FOREIGN KEY (category_id)
    REFERENCES study.categories (id) #  с какой таблицей устанавливается связь и по какому полю
    ON DELETE RESTRICT 
    ON UPDATE CASCADE);

# Настройки контроля ссылочной целостности
# RESTRICT – запрет на действие, если есть связанные записи,
# CASCADE – каскадное обновление/удаление связанных записей,
# SET NULL – значения внешнего ключа у связанных записей сбрасываются в NULL,
# NO ACTION – идентично RESTRICT.