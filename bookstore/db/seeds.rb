# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

author = Author.create([
  {
    name: "Тургенев",
    describtion: "Ива́н Серге́евич Турге́нев — русский писатель-реалист, поэт, публицист, драматург, переводчик. Один из классиков русской литературы, внёсших наиболее значительный вклад в её развитие во второй половине XIX века. Википедия
Родился: 9 ноября 1818 г., Орёл, Россия
Умер: 3 сентября 1883 г., Буживаль, Франция
Дата и место захоронения: 27 сентября 1883 г., Волковское кладбище, Санкт-Петербург, Россия"
},
{
  name: "Лермонтов",
  describtion: "Михаи́л Ю́рьевич Ле́рмонтов — русский поэт, прозаик, драматург, художник. Википедия
Родился: 15 октября 1814 г., Москва, Россия
Умер: 27 июля 1841 г., Пятигорск, Россия
Дата и место захоронения: Тарханы, Россия"
}
])
genres = Genre.create([
  {title: "Роман"}, {title: "Поэма"}
  ])
books = Book.create([
  {
    title: "Герой нашего времени",
    describtion: "«Геро́й на́шего вре́мени» — первый в русской прозе лирико-психологический роман в литературном направлении реализма, близкого к романтизму, написанный Михаилом Юрьевичем Лермонтовым. Классика русской литературы.",
    author_id: 2,
    genre_id: 2,
    price: 234.5,
  },
  {
    title: "Отцы и дети",
    describtion: "«Отцы́ и де́ти» — роман русского писателя Ивана Сергеевича Тургенева, написанный в 60-е годы XIX века. Роман стал знаковым для своего времени, а образ главного героя Евгения Базарова был воспринят молодёжью как пример для подражания. ",
    author_id: 1,
    genre_id: 1,
    price: 453.6,
  }
  ])
  
