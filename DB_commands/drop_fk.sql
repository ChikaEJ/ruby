 # удаление индекса внешнего ключа
ALTER TABLE study.products
DROP INDEX FK_brand_idx;
# удаление поля внешнего ключа
ALTER TABLE study.products
DROP COLUMN brand_id;
# Удаление внешнего ключа
ALTER TABLE study.products
DROP FOREIGN KEY FK_brand;
# удаление индекса и поля внешнего ключа
ALTER TABLE study.products
DROP INDEX FK_brand_idx,
DROP COLUMN brand_id;
# Изменение таблицы. Удаление всех компонентов внешнего ключа
ALTER TABLE study.products
DROP FOREIGN KEY FK_brand,
DROP INDEX FK_brand_idx,
DROP COLUMN brand_id